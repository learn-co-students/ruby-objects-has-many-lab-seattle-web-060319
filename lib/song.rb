class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def artist_name
  self.artist ? self.artist.name : nil
end

def self.all
  @@all
end

end





# describe '#artist_name' do
#   it 'knows the name of its artist' do
#     drake = Artist.new('Drake')
#     song.artist = drake
#     expect(song.artist_name).to eq('Drake')
