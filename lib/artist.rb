require 'pry'

class Artist 
    
    attr_accessor :name
    
    @@all = []
    
  def initialize(name)
      @name = name
      @@all << self
  end
  
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end
  
  def songs 
      Song.all.select do |song|
      song.artist == self
    end
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.find(artist_name)
      self.find(artist_name)
    else
      self.new(artist_name)
    end
  end
    
  def self.find(artist_name)
     self.all.find {|artist| artist.name == artist_name}
  end
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end
  
end



#-------------------------------
# class Artist
  
#     attr_accessor :name, :songs
#   # attr_reader 
   
#     @@all = []
    
    
#   def initialize(name)
#       @name = name
#       #@songs = []
#       @@all << self
#   end
   
#     def self.all 
#       @@all
#   end

#   def add_song(song)
#     song.artist = self
#     #binding.pry
#     end 
     
#     def songs
#       #binding.pry
#     Song.all.select {|song| song.artist == self}
#   end 
 
#     def save 
#       #@@all << self
#       @save
#     end
    
#     def self.find_or_create_by_name(artist_name) 
#       if self.find(artist_name)
#         self.find(artist_name)
#       else 
#         self.new(artist_name)
#       end
#     end

  
#     def self.find(artist_name)
#       self.all.find {|artist| artist.name == artist_name}
#     end

#       #self.all.find {|artist| artist.name == name} || self.new(name).save 
#     #end
 
#     def print_songs
#         self.songs.each do |song|
#         puts song.name
#     end
#   end

# end



#------------------------------------------------------


#learn --f-f

