
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    arr = []
    arr = file.split(" - ")
    temp = self.new(arr[1])
    @artist = Artist.new(arr[0])
    @artist.save
    @artist.add_song(temp)
    temp
  end
end #end of Class
