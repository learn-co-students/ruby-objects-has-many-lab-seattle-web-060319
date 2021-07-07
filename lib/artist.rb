
class Artist
  attr_accessor :name, :songs
    @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end
