class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        
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
        counter = {}
        @@genres.each do |genre|
            #if genre is a key, increment the value
            #if genre is not a key, create is a a key and set value to 1
            if counter.keys.include?(genre)
                counter[genre] += 1
            else
                counter[genre] = 1
            end
        end
        counter
    end

    def self.artist_count
        counter = {}
        @@artists.each do |artist|
            if counter.keys.include?(artist)
                counter[artist] +=1
            else
                counter[artist] = 1
            end
        end
        counter
    end

end
