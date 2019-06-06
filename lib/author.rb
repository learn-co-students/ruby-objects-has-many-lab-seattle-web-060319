class Author
	
	attr_accessor :name

	def initialize(name)
		@name = name
		@posts = []
	end

	def posts
		@posts
	end

	def posts= (new_post)
		@posts << new_post
	end

	def add_post(post_instance)
		self.posts=(post_instance)
		post_instance.author = self
	end

	def add_post_by_title(post_title)
		new_post = Post.new(post_title)
		self.add_post(new_post)
	end

	def self.post_count
		Post.all.length
	end

end