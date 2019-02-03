class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # * `Artist#paintings`
    #   * Returns an `array` all the paintings by an artist [x]
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    # * `Artist#galleries`
    #   * Returns an `array` of all the galleries that an artist has paintings in
    paintings.map { |painting| painting.gallery }
  end

  def cities
    # * `Artist#cities`
    #   * Return an `array` of all cities that an artist has paintings in [x]
    galleries.map { |painting| painting.city }
  end

  def self.total_experience
    # * `Artist.total_experience`
    #   * Returns an `integer` that is the total years of experience of all artists
    self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    # * `Artist.most_prolific`
    #   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
    # artist.paintings.length / artist.years_experience
    arr = self.all.sort_by {|artist| artist.paintings.length/artist.years_experience}.reverse
    arr[0]
  end

  def create_painting(title, price, gallery)
    # * `Artist#create_painting`
    #   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist [x]
    painting = Painting.new(title, price, self, gallery)
    painting
  end

end
