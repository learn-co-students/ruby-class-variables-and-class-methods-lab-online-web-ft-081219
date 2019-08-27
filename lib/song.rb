class Song 
  attr_accessor :artist, :genre, :name 
  @@artists = []
  @@count = 0 
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist
    @genre = genre
      @@artists << artist
      @@genres << genre
    
  end
  
    def self.count
    @@count
  end
  
  def self.artists
    non_rep_art = []
    @@artists.each do |artist|
      unless non_rep_art.include?(artist)
        non_rep_art << artist
      end
    end
    non_rep_art
  end
  
  def self.genres 
    non_rep_gen = []
    @@genres.each do |genre|
      unless non_rep_gen.include?(genre)
        non_rep_gen << genre
      end
    end
    non_rep_gen
  end
  
  def self.genre_count
    gen_count = {} 
    @@genres.each do |genre|
      unless gen_count.include?(genre)
        gen_count[genre] = 0 
      end
      gen_count[genre] += 1 
    end
    gen_count
  end 
  
  def self.artist_count
    art_count = {} 
    @@artists.each do |name|
      unless art_count.include?(name)
        art_count[name] = 0 
      end
      art_count[name] += 1 
    end
    art_count
  end
end 