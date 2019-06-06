
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
 
  def add_song(song)
    @songs << song
    song.artist = self
  end
 
  def songs
    @songs
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    count = 0
    @@all.each do |artist|
      count += artist.songs.length 
    end
    count
  end

end