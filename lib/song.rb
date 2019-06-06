require_relative 'artist.rb'
require 'pry'

class Song

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    attr_accessor :name, :artist

    def artist_name
        if self.artist
            return self.artist.name
        else
            return nil
        end
        #binding.pry
    end

end