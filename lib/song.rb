class Song

  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def artist_name
    if artist
      self.artist.name
    else
      return nil
    end
  end


end
