class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name,city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|ele| ele.gallery == self}
  end

  def artists
    paintings.map {|ele| ele.artist}
  end

  def artist_names
    artists.map {|ele| ele.name}
  end

  def most_expensive_painting
    paintings.max_by {|ele| ele.price}
  end

end
