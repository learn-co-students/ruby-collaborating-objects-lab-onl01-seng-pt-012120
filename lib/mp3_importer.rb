require "pry"


class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    full_list = Dir.glob("#{@path}/*mp3")
    trimmed_list = []
    full_list.each do |file|
      trimmed_list << file.split("/")[-1]
    end
    trimmed_list
  end
  
  def import
    # uses Song.new_by_filename
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
  
  
end