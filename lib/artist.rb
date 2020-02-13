class Artist
  @@all = []
  attr_accessor(:name)
  
  def initialize(artist_name)
    @name = artist_name
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs()
    return Song.all.select{|song| song.artist == self}
  end
  
  def print_songs()
    Song.all.select{|song| song.artist == self}.each do |a_song|
      puts a_song.name
    end
  end
  
  def self.find_or_create_by_name(artist_name)
    if @@all.select{|artist| artist.name == artist_name}.size > 0
      return @@all.select{|artist| artist.name == artist_name}[0]
    else
      Artist.new(artist_name)
    end
  end
  
  def self.all()
    return @@all
  end
end