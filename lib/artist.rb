require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs.push(song)
  end

  # def songs
  #   @songs
  # end


  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)

  end

  def self.song_count
  # if @songs.length > 0
  #   count = @songs.length
  # else
  #   count = 0
  # end
#binding.pry
  Song.all.length

  end


end
