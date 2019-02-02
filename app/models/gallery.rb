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
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map { |painting| painting.artist  }
  end

  def artist_names
    artists.map { |artist| artist.name  }
  end

  def most_expensive_painting

    arr = paintings.sort_by { |painting| painting.price }
    sorted_arr = arr.reverse
    sorted_arr.find { |painting| painting.price }

  end

end
