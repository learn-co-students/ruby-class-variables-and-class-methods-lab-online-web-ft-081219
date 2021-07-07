class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #(everytime a new song is created it adds one to the song count)
    @@artists << artist #puts the artist into the artists array
    @@genres << genre #puts the genre into the genre array
  end
  def self.count 
    @@count #returns the count for songs
  end
  
  def self.artists
    @@artists.uniq #returns a unique list of artists
  end
  
   def self.genres
    @@genres.uniq #returns a unique list of genres
  end
  
  def self.genre_count
    genre_count = {} #make hash for genre_count
    @@genres.each do |genre| #itterate over array
      if genre_count[genre] #if the genre key exists (example "rap" => 5) add one to the count
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1 #if the genre key doesn't exist create the genre key and assign it 1
      end
    end
    genre_count #return the genre count
  end
  
  def self.artist_count
    artist_count = {} #makes an artist hash
    @@artists.each do |artist| #itterate over the artist array
      if artist_count[artist] #if artist key exists (example "Snoop Dog" => 2) add one to the count
        artist_count[artist] += 1 #adds one to the value
      else
        artist_count[artist] = 1 ##if the artist key doesn't exist create the artist key and assign it 1
      end
    end
    artist_count #return artist count
  end
end
