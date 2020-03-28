require 'pry'


# class MP3Importer
#   attr_reader :path
  
#   def initialize(path)
#     @path = path
#   end
  
#   def files  
#     #binding.pry
#     #Dir.entries(path).select {|entry| entry.include?(".mp3")}
#     Dir.entries(self.path).select {|file| file.ends_with?(".mp3")}
#   end
  
#   def import 
#     self.files.each do |file|
#       Song.new_by_filename(file)
#     end
#   end
  
# end






#-------------------------------

class MP3Importer 
  
   attr_accessor :path 

  def initialize(path)
    @path = path
  end
  
  def files  
    Dir.entries(path).select { |entry| entry.end_with?(".mp3") }
  end
    #binding.pry
    
    
  def import 
      self.files.each {|file| Song.new_by_filename(file)}
  end
  
end

# learn --f-f