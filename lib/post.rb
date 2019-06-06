class Post
	
	attr_accessor :name, :title, :author

	@@all = []

	def initialize(title)
		@title = title
		@author = nil
		@@all << self
	end

	def author_name
		unless @author.nil?
			@author_name = @author.name
		end
	end

	def self.all
		@@all
	end
end