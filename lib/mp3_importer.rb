class MP3Importer
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files
    arr = Dir.entries(@path)
    arr.delete_if {|element| element == "." || element == ".."}
  end 
  
  def import 
    new_array = []
    files.each do |x|
     new_array << x.split(' - ').join(' - ')
    end 
    new_array.each do |song|
     Song.new_by_filename(song)
    end 
  end 
   
end 