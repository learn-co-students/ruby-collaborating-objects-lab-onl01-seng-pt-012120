require "pry"


class Artist
  
  attr_accessor :name
  
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
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    # if found then return
    # else create new artist then return
    
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    else
      self.new(name)
    end
  end
  
  def print_songs
    
  end

end