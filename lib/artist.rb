class Artist
  @@all = []
attr_accessor :name, :songs, :all
  def initialize(name)
    @name = name
    @songs = []

  end
  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    if @@all.detect do |artist|
        name == artist.name
      end
      @@all.detect do |artist|
        name == artist.name
      end
    else
      temp = Artist.new(name)
      @@all << temp
      temp
    end
  end
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end

end
