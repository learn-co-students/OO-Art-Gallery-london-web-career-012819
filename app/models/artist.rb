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
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery  }
  end

  def cities
    galleries.map { |gallery| gallery.city  }
  end

  def self.total_experience
    arr = []
    arr = @@all.map { |artist| artist.years_experience  }
    arr.reduce(:+)
  end

  # def self.most_prolific
  # arr = @@all.sort_by { |artist| artist.years_experience }
  # sorted_arr = arr.reverse
  # artist_arr = @@all.sort_by { |artist| artist.name }
  # end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
