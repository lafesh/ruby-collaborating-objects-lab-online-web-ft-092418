require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    self.name = name 
  end 
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end 
  
  def self.new_by_filename(file_name)
    artist_name, song_name, genre = file_name.split(" - ")
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end 
  
  
end 