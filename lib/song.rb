require 'pry'
class Song 
attr_accessor :artist, :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end 

def self.all
  @@all
end

def self.new_by_filename
  song = self.new
  song.name = filename.split(" - ")[1]
end

def artist_name
  self.artist.name
end

end
