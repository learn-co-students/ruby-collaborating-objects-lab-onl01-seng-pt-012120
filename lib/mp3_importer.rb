class MP3Importer
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files 
   Dir.entries(self.path).select {|file| file.ends_with?(".mp3s")}
  end 
    
  def import 
  
  end
end 
