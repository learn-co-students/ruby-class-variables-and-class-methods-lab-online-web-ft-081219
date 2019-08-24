class Song 
  
  attr_accessor :name, :artists, :genres

  @@count = 0

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @@count += 1
  end
 
  def self.count
    @@count
  end
  
  def self.artist
    @artist
  end
end