class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).reject {|f| f == '.' || f == '..'}
  end
  
  def import
    files.each do |f|
      Song.new_by_filename(f)
    end
  end
end