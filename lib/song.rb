require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    self.name = name 
  end 
  
  #def self.new_by_name(name)
    #self.new.tap{|song| song.name = name}
  #end 
  
  def self.new_by_filename(file_name)
    artist_name, song_name, genre = file_name.split(" - ")
    #self.new_by_name(song_name).tap{|song| song.artist_name = artist_name}
    song = self.new(song_name)
    song = song.new.artist(artist_name)
    song
  end 
  
  
end 