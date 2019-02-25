require 'pry'

class MP3Importer
  attr_accessor :path, :files
  def initialize(music_path)
    @path = music_path
    @files = Dir.entries(music_path).select{|filename| filename.end_with?(".mp3")}
  end
end
