require_relative '../config/environment.rb'

artist1 = Artist.new("Tominiyi",10)
artist2 = Artist.new("Kian", 12)
artist3 = Artist.new("Sal", 13)
artist4 = Artist.new("Stuart", 13)
artist5 = Artist.new("Ademola",7)


g1 = Gallery.new("Modern","Milan")
g2 = Gallery.new("Classical","Paris")
g3 = Gallery.new("Antiquity","Bratislava")
g4 = Gallery.new("Rennaissance","Perugia")


painting1 = Painting.new("MonaLisa",2000,g2,artist2)
painting2 = Painting.new("Otello",3000,g2,artist3)
painting3 = Painting.new("St Anthony",4000,g3,artist1)
painting4 = Painting.new("Mother Theresa",6000,g4,artist1)
painting5 = Painting.new("Shehu Shagari",10000,g4,artist5)





binding.pry

puts "Bob Ross rules."
