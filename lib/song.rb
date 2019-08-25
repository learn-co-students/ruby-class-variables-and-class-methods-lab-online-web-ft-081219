require 'relative'
class Song 
  
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    
    @@count += 1 
    @@genres << self 
    @@artists << self
    
  end
  
  def self.count
    @@count
  end
  def self.genres
    @@genres 
  end
  def self.artists 
    @@artists
  end 
  
  def self.genre_count 
     genre_count
  end
end