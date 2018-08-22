class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    # if song.artist == nil && songs.include?(song) == false
    #   song.artist = self
    #   songs << song
    # end
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def self.create(name)
    @name = name
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

end
