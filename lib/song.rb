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
  
  #you ar on the song.find_by_name method
  


end


