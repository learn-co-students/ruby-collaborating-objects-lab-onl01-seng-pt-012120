class MP3Importer

  attr_reader :path, :filenames

    def initialize(path)
      @path = path
      @filenames = []
    end 
    
    def files
    puts "in files, path=#{@path}"
    puts "wd=...#{Dir.getwd.sub(/.*ruby(.*)/, '\1')}"
    current_dir = Dir.getwd
    Dir.chdir(@path)
    filenames = Dir.glob("*.mp3")
    Dir.chdir(current_dir)
    filenames
  end
  
  def import
    files.each {|song| Song.new_by_filename(files)} 
  end
    
  end