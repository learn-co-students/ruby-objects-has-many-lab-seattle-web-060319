class Song
	attr_accessor :artist, :name
	@@all = []

	def self.all
		@@all
	end	

	def initialize(name)
		@name = name
		@@all << self
	end

	def artist_name
		if @artist
			@artist.name
		else
			nil
		end
	end
end