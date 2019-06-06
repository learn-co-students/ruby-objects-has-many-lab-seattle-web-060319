require_relative 'author'

class Post

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    attr_accessor :title, :author

    def author_name
        if self.author
            return self.author.name
        else
            nil

        end
    end

end