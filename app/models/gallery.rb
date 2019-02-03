class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # * `Gallery#paintings`
    #   * Returns an `array` of all paintings in a gallery
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    # * `Gallery#artists`
    #   * Returns an `array` of all artists that have a painting in a gallery
    paintings.map { |painting| painting.artist }
  end

  def artist_names
    # * `Gallery#artist_names`
    #   * Returns an `array` of the names of all artists that have a painting in a gallery
    self.artists.map { |artist| artist.name }
  end

  def most_expensive
    # * `Gallery#most_expensive_painting`
    #   * Returns an `instance` of the most expensive painting in a gallery
     arr = self.paintings.sort_by {|painting| painting.price}.reverse
     arr[0]
  end

end
