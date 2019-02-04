require_relative '../config/environment.rb'


a1 = Artist.new("a1", 1)
a2 = Artist.new("a2", 1)
a3 = Artist.new("a3", 2)
a4 = Artist.new("a4", 2)

g1 = Gallery.new("St Germain", "Paris")
g2 = Gallery.new("National Trust", "London")
g3 = Gallery.new("Tate", "London")

p1 = Painting.new("p1", 5000, a1, g1)
p2 = Painting.new("p2", 200, a2, g1)
p3 = Painting.new("p3", 400, a3, g3)
p4 = Painting.new("p4", 500, a3, g2)
p5 = Painting.new("p5", 300, a4, g1)
p7 = Painting.new("p5", 300, a4, g1)
p8 = Painting.new("p5", 300, a1, g1)
p9 = Painting.new("p5", 300, a4, g1)
p10 = Painting.new("p5", 300, a3, g1)



binding.pry

puts "Bob Ross rules."
