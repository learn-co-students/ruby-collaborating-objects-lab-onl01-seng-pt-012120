class MP3Importer
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end
  
  def path
    @path
  end
  
  def files 
   Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
  end 
    
  def import
    filename_list.each {|filenames| Song.new_by_filename(filename_list)}
  end
end 
