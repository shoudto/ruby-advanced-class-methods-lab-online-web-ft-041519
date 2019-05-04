require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.find_by_name(name)
   @all.find do |song|
      song.name == name
    end
  end 
 
  # end of code 
  def self.destroy_all
    self.all.clear 
  end 
end
