require 'pry'

# class Song
#   attr_accessor :name, :artist

#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def artist_name=(artist)
#     if artist.class == Artist 
#       @artist = artist
#     else
#       @artist = Artist.find_or_create_by_name(artist)
#   end
# end
  
#   def self.new_by_filename(name)
#     split_name = name.split(" - ")
#     song = self.new(split_name[1])
#     song.artist = (split_name[0])
#     song
#     #binding.pry
# end
 
 
# end

#----------------------------------------
  
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

   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

end 






#----------------------------------------
  # class Song
  
  #   attr_accessor :name, :artist 
  # #attr_reader :artist
   
  # @@all = []
    
  #   def initialize(name)
  #     @name = name
  #   end
    
  #   def self.all
  #     @@all
  #   end 


  # def artist_name=(name)
  #     self.artist = Artist.find_or_create_by_name(name)
  #     #binding.pry
  #     self.artist.add_song(self)
  #   end
        
  #   def self.new_by_filename(file)
  #       song_name = file.split(" - ")[1] 
  #       artist = file.split(" - ")[0] 
  #       song = self.new(song_name)
  #       song.artist_name = artist
  #       song
  #       #binding.pry
  #   end


    
  # end 
  

 



#learn --f-f

