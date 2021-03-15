require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs


 @@artists = []
  
  def initialize(name)
    #@@artists << self
  end
  
  def self.all 
     @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end