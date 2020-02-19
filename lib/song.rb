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
 
  def self.new_by_filename(song_name)
        p song_name
        artist, song = song_name.split(' - ')
        artist = Artist.new(artist)
        song = Song.new(song)
        song.artist = artist
        song
        
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end 
  
  
end