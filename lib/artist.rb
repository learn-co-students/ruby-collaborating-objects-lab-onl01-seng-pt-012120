class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name)
      @@all.detect do |artist|
      artist.name == name
    end
  end
  
  def self.create_by_name(name)
    self.new(name)
  end
  
  def print_songs
    @songs.each do |s|
      puts s.name
    end
  end
end