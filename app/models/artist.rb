class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def paintings
    Painting.all.select {|x| x.artist == self}
  end

  def galleries
    paintings.map {|x| x.gallery}
  end

  def cities
    galleries.map {|x| x.city}
  end

  def paintings_per_year
    paintings.count.to_f / @years_experience.to_f
  end

  def self.all
    @@all
  end

  def self.total_experience
    all.sum {|x| x.years_experience}
  end

  def self.most_prolific
    @@all.max_by {|x| x.paintings_per_year}
  end

end
