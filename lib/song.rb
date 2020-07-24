class Song
  attr_accessor :name, :count, :artist, :genre, :artists, :genres 
  @@count=0
  @@genres=[]
  @@artists=[]
  @@genre_count={}
  @@artist_count={}
  
  def initialize (name,artist,genre)
   
    @name=name
    @genre=genre
    @artist=artist
       @@genres[@@count]=genre
   @@artists[@@count]=artist
      
 @@count += 1
   
  end
 
  def self.count
    @@count
  end
 
  def name
  @name
end
  def genre
  @genre
end
  def artist
  @artist
end
  def self.genres
 un= @@genres.uniq
 # unique = names.uniq
  return un
end
  def self.artists
  um=@@artists.uniq
  return um
end
  def self.genre_count
  # @@genres.each { | v | @@genre_count[v] +=1 }
   #a.each {|v| h[v] +=1 }
h = Hash.new(0)
@@genres.each { | v | h.store(v, h[v]+1) }
@@genre_count=h
return @@genre_count
# h = { 3=>3, 2=>1, 1=>1, 4=>1 } 
  end
  
   def self.artist_count
   
#@@artist_count= Hash[@@artists.collect { |v| @@artist_count[v] += 1}]
h = Hash.new(0)
@@artists.each { | v | h.store(v, h[v]+1) }
@@artist_count=h
return @@artist_count
  end
end