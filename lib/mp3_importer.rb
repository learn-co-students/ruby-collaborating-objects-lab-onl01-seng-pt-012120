class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files 
        Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
    end

    def import
      #list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
        self.files.each do |files|
            Song.new_by_filename(files)
        end
    end
  end