class Song 
attr_accessor :artist, :name

@@all = []

def initialize(name)
  @name = name
end 

def self.all
  @@all
end

def self.new_by_filename
end

def artist_name
end

end
