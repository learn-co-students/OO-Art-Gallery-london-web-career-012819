class Painting

  attr_reader :title, :price, :gallery,:artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    all.sum {|x| x.price}
  end

end
