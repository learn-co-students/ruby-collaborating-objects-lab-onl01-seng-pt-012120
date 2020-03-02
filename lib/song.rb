require "pry"

class Song

attr_accessor :name, :artist
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def self.new_by_filename(filename)
    song_split = filename.split(" - ")
    song = Song.new(song_split[1])
    song.artist_name = song_split[0]
    song
end

#def artist_name=(name)
#    binding.pry
#    self.artist = Artist.find_or_create_by_name(name)
#end

def artist_name=(artist)
    if artist.class == Artist
        @artist = artist
    else
        @artist = Artist.find_or_create_by_name(artist)
    end
end
end