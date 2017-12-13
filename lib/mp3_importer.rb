class MP3Importer
attr_accessor :path, :files
  def initialize(path)
    @path = (path)

  end
  def files
    @files = Dir["#{@path}/*.mp3"].select{ |f| File.file? f }.map{ |f| File.basename f }
  end
  def import
    files.each do |file|
      Song.new_by_filename(file)
      #binding.pry
    end
  end

end
