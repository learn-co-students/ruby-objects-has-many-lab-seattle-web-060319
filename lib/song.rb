class Song

	attr_accessor :name, :artist, :artist_name

	@@all = []

	def initialize(name)
		@name = name
		@artist = nil
		@@all << self
	end

	def artist_name
		unless @artist.nil?
			@artist_name = @artist.name
		end
	end

	def self.all
		@@all
	end
end