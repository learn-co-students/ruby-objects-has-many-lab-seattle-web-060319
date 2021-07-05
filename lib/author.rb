class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts.push(post)
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end

def self.post_count
  Post.all.length
end
end
