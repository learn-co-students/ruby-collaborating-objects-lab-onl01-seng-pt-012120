require "pry"

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
        Song.all.select {|name| name.artist == self}
    end

    def self.find_by_name(name)
        self.all.find {|title| title.name == name}
    end
    

    def self.find_or_create_by_name(artist_name)
       if self.find_by_name(artist_name)
            self.find_by_name(artist_name)
       else
        self.new(artist_name)
       end
    end

    def print_songs
        self.songs.each { |song| puts song.name}
    end
        
end