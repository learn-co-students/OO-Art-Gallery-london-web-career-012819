class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select {|x| x.gallery == self}
  end

  def artists
    paintings.map {|x| x.artist}
  end

  def artist_names
    artists.map {|x| x.name}
  end

  def most_expensive_painting
    paintings.max_by {|x| x.price}
  end


  def self.all
    @@all
  end

end
