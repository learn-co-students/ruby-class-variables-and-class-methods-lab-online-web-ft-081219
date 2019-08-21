class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count +=1
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.artist_count
    count_artists = {}
    @@artists.each do |artist|
      if count_artists[artist]
        count_artists[artist] +=1
      else
        count_artists[artist] = 1
      end
    end
    count_artists
  end
  def self.genre_count
    count_genres = {}
    @@genres.each do |genre|
      if count_genres[genre]
        count_genres[genre] += 1
      else
        count_genres[genre] = 1
      end
    end
    count_genres
  end
end
