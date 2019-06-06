require 'pry'
class Post

@@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def author_name
    puts "hi"
    puts author


    if author
      self.author.name
    else
      return nil
    end

    # if self.name == nil
    #   return nil
    #     binding.pry
    # else
    #   author_name = author.name
    # end
  end

end
