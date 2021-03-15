require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

 def initialize
    @songs = []
  end
  
  extend Memorable::ClassMethods 
  extend Findable::ClassMethods 
  include Memorable::InstanceMethods 
  include Paramable::InstanceMethods 

  def self.all
    @@all 
  end

  def artist=(artist)
    @artist = artist
  end
end