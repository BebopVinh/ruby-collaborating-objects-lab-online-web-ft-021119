require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = "my fav"
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(filename)
    array = filename.split(/[-.]/)
    song = self.new(array[1].strip)
    binding.pry
    @artist = Artist.find_or_create_by_name(array[0].strip)
    @artist.save
    @artist.add_song(song)
    song
  end
end #end of Class
