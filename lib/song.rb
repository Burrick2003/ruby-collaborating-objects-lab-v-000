class Song
  @@all = []
attr_accessor :name, :artist
  def initialize(name)
    @name=(name)

  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename)
  artist, song = filename.split(" - ")
  new_song = self.new(song)
  new_song.artist_name = artist
  new_song.save
end
def save
    @@all << self
    self
  end


end
