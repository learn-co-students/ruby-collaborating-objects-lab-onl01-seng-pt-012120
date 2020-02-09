require 'pry'
class Song
  attr_accessor :name, :artist
  
  @@all_artist = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all_artist << self
    self
  end
  
  def self.all
    @@all_artist
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.save
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end