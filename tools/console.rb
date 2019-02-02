require_relative '../config/environment.rb'


peder = Artist.new("Peder", 5)
fia = Artist.new("Fia", 10)
luc = Artist.new("Luc", 15)
erika = Artist.new("Erika", 3)

tate = Gallery.new("Tate", "London")
moma = Gallery.new("Museum of Modern Art", "New York")
olympic = Gallery.new("Olympic", "Lausanne")
v_and_a = Gallery.new("Victoria & Albert", "London")

p1 = Painting.new("Flower", 80, luc, moma)
p2 = Painting.new("Water", 90, fia, tate)
p3 = Painting.new("Sun", 10, erika, olympic)
p4 = Painting.new("Rage", 120, peder, v_and_a)
p5 = Painting.new("Sisters", 200, fia, moma)


binding.pry

puts "Bob Ross rules."
