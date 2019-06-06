require 'pry'

class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
    # binding.pry
  end

  def posts
    @posts
  end

  def add_post(post)
    @post = post
    @posts << post
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.length
  end

end
