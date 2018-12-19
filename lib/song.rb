class Song
attr_accessor :name, :artist, :genre
@@count = 0                  #have class variables setup after accessor but before initializer
@@artists = []
@@genres = []


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

@@count += 1                   # good place to put in function for execution within class method, show below with self
@@artists.push(artist)
@@genres.push(genre)

end
def self.count
  @@count
end

def self.artists
@@artists
end
def self.genres
  @@genres
end
def self.artists
  @@artists.uniq
end
def self.genres
  @@genres.uniq
end

def self.genre_count
  genres = {}  #empty hash

  @@genres.each do |genre|
    genres[genre] = 0 if(!genres[genre])

    genres[genre] += 1
  end

  genres
end
def self.artist_count
artists = {}
@@artists.each do |artist|
  artists[artist] = 0 if(!artists[artist])
  artists[artist] += 1
end
artists
end
end
