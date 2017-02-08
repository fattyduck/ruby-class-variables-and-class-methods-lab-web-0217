class Song

  attr_accessor :artist, :name, :genre
  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genres)
    @artist = artist
    @name = name
    @genre = genres
    @@genres.push(genres)
    @@artists.push(artist)
    @@count += 1
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

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if artists_hash[artist] == nil
        artists_hash[artist] = 1
      else
        artists_hash[artist] += 1
      end
    end
    artists_hash
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |artist|
      if genres_hash[artist] == nil
        genres_hash[artist] = 1
      else
        genres_hash[artist] += 1
      end
    end
    genres_hash
  end
end
