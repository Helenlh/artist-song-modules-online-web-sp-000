require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

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
    
  end
end