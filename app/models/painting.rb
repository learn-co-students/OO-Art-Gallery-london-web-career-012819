class Painting

  attr_accessor :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    a = @@all.map {|ele| ele.price}
    a.inject(:+)
  end

  

end
