require 'pry'

class MP3Importer
  attr_accessor :path, :files, :artist, :song
  def initialize(music_path)
    @path = music_path
    @files = Dir.entries(music_path).select{|filename| filename.end_with?(".mp3")}
  end

  def import
    @files.each do |filename|
      array = filename.split(/[-.]/)
      artist = array[0].strip
      self.artist = Artist.find_or_create_by_name(artist)
      Song.new_by_filename(filename)
    end
  end #end of #import

end#end of Class
