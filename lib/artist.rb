require_relative 'song.rb'
require 'pry'

class Artist

    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    attr_accessor :name

    def songs
        @songs
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
    end

    def self.song_count
        empty = []
        Artist.all.each do |x|
            empty << x.songs
            # binding.pry
        end
        empty.flatten!
        empty.length
        #binding.pry
    end
        

end
