require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.find {|artist| artist.name == name} || self.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
  end

  def self.all
    @@all
  end

  # def self.find_or_create_by_name(name)
  #   @@all.each {|element| return element.name if element.name.include?(name)}
  #   return self.new(name)
  # end

  def print_songs
    @songs.each {|element| puts element.name}
  end
end
