require 'pry'

class MP3Importer
  attr_accessor :path, :files
  def initialize(music_path)
    binding.pry
    @path = music_path
    @files = []
  end
end
