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

def paintings
  Painting.all.select do |painting|
    painting.artist == self
    end
end

def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
end

def cities
  self.galleries.map do |gallery|
    gallery.city
  end
end

def self.total_experience
total_experience = 0
  @@all.each do |artist|
    total_experience += artist.years_experience
  end
  total_experience
end

def create_painting(title, price, gallery)
Painting.new(title, price, self, gallery)
end

end
