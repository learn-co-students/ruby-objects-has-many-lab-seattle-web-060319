class Artist
	attr_accessor :name

	@@all_songs = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def songs= (new_song)
		@songs << new_song
	end

	def add_song(song_instance)
		self.songs=(song_instance)
		song_instance.artist = self
	end

	def add_song_by_name(song_title)
		new_song = Song.new(song_title)
		self.add_song(new_song)
	end

	def self.song_count
		Song.all.length
	end
end