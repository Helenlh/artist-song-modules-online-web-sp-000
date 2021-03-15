require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

    @@songs = []
  
  extend Memorable::ClassMethods 
  extend Findable::ClassMethods 
  include Memorable::InstanceMethods 
  include Paramable::InstanceMethods 

  def self.all
    @@songs  
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  end