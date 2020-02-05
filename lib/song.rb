require "pry"

class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = Song.new(name)
    
    # BELOW searches through the Artist @@all class variable
    # using the Artist class method created in the other file
    # this way the Artist is an object and not just a string
    
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
  
end