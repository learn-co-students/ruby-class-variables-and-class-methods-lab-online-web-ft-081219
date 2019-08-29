class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
  @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    gen = {}
    @@genres.each do |genre|
      if gen[genre]
        gen[genre] += 1
      else
        gen[genre] = 1
      end
    end
    gen
  end
  
  def self.artist_count
     art = {}
    @@artists.collect do |artist|
      if art[artist]
        art[artist] += 1
      else
        art[artist] = 1
      end
    end
    art
  end
  
end




