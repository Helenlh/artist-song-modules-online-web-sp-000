require 'pry' 

module Memorable 
   module ClassMethods 
  
  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end 
end 

module InstanceMethods 
 def initialize
    self.class.all << self   
    #this is code that is responsible for telling a class to keep track of its own instances.
  end
end 
end