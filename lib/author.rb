require_relative 'post'
require 'pry'

class Author

    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    attr_accessor :name

    def self.all
        @@all
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
    end

    def self.post_count
        empty = []
        Author.all.each do |x|
            empty << x.posts
        end
        empty.flatten!
        empty.length
    end


end
    