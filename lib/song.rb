class Song

attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |hash, genre| hash[genre] += 1; hash}
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |hash, artists| hash[artists] += 1; hash}
  end

  def initialize(name, artist, genre)
    @@count = @@count + 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end

end
