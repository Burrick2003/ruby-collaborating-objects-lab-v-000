class Song
  @@all = []
attr_accessor :name, :artist
  def initialize(name)
    @name=(name)

  end
  def self.all
    @@all
  end
  def self.new_by_filename(filename) #filename is artist,name,genre whereas init is name,artist,genre
      array = filename.split(" - ")
      newsong = self.new(array[1])
      newsong.artist = Artist.find_or_create_by_name(array[0])

      @@all << newsong
      #binding.pry
    end



end
