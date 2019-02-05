class Artist

  attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end


  def paintings
    Painting.all.select {|ele| ele.artist == self}
  end

  def galleries
    paintings.map {|ele| ele.gallery}
  end

  def cities
    galleries.map {|ele| ele.city}
  end

  def self.total_experience
    a = @@all.map {|ele| ele.years_experience}
    a.inject(:+)
  end

  def paintings_per_year
    paintings.count.to_f / @years_experience.to_f
  end

  def most_prolific
    @@all.max_by {|x| x.paintings_per_year}
  end




end
