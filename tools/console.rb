require_relative '../config/environment.rb'

a1 = Artist.new("Stu", 2)
a2 = Artist.new("Seb", 2)

g1 = Gallery.new("Tate", "London")
g2 = Gallery.new("Howard Griffin", "LA")

a1.create_painting("Sunflowers", 123, g1)
a2.create_painting("DT Paris", 99, g1)
a2.create_painting("DT Paris 3", 240, g1)
a1.create_painting("Self Portrait", 80, g2)
a2.create_painting("DT Paris 2", 199, g1)

binding.pry

puts "Bob Ross rules."
