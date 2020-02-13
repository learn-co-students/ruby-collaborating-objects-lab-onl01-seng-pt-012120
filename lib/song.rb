class Song
  @@all = []
  attr_accessor(:name, :artist)
  
  def initialize(song_name)
    @name = song_name
    @@all << self
  end
  
  def artist_name=(artist_name)
    an_artist = Artist.find_or_create_by_name(artist_name)
    an_artist.add_song(self)
  end
  
  def self.all()
    return @@all
  end
  
  def self.new_by_filename(filename)
    filename_pieces = filename.split(" - ")
    name_of_artist = filename_pieces[0]
    name_of_song = filename_pieces[1]
    song_object = Song.new(name_of_song)
    song_object.artist = Artist.find_or_create_by_name(name_of_artist)
    return song_object
  end
end
  