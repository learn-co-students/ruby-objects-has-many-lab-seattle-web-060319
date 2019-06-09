require 'pry'
class Post

  attr_accessor :title, :author, :name
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
       self.author.name
    else
       nil
    end
  end


end
