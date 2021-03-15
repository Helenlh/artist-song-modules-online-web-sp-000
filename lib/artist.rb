require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  extend Findable 
  include Memorable::InstanceMethods 
  include Paramable 
  
  @@artists = []
  
  def initialize
    @@artists << self
    @songs = []
  end
  
  def self.all 
     @@artists 
  end

  
@@artists.detect{|a| a.name == name} 

  def self.find_by_name(name) 
    
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end