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
  
  def Song.create
    song = Song.new
    song.save
    song
  end 
  
  def Song.new_by_name(song_name)
    
    song = Song.new
    song.name = song_name
    song
  
  end
  
  def Song.create_by_name(song_name)
    
    song = Song.new
    song.name = song_name
    song.save
    song
  
  end
  
  def Song.find_by_name(song_name)
    self.all.detect do |song_instance|
       song_instance.name == song_name
    end
  end 
  
  
  def Song.find_or_create_by_name(song_name_string)
  
    if Song.find_by_name(song_name_string)
      Song.find_by_name(song_name_string)
    else
      Song.create_by_name(song_name_string)
    end 
  end
  
  def Song.alphabetical
    self.all.sort_by do |song_instance|
      song_instance.name
    end 
  end
  
  def Song.new_from_filename(artist_and_file)
    
   artis_and_file.split("-")  
   
  end


end
puts Song.new_from_filename("Taylor Swift - Blank Space.mp3")

