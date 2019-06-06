require 'pry'

class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self

  end




  def add_post(post)
    @posts << post
    post.author = self

  end


  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
    sum = 0
    @@all.each { |x| sum += x.posts.length }
    sum
  end





end
