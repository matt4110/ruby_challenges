class PieceOfWork
	attr_accessor :title, :artist
end

class Song < PieceOfWork
	attr_accessor :album, :date
end

class Painting < PieceOfWork
	attr_accessor :era, :medium
end

my_song = Song.new
my_song.title = "Smells like Teen Spirit"
my_song.artist = "Nirvana"
my_song.album = "Nevermind"
my_song.date = "1991"

my_painting = Painting.new
my_painting.title = "The Starry Night"
my_painting.artist = "Vincent Van Gogh"
my_painting.era = "impressionist"
my_painting.medium = "Oil on Canvas"

puts my_song.inspect
puts my_painting.inspect