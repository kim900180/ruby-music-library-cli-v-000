class Genre
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

  def artist
    songs.collect{ |song| song.genre }.uniq
  end

end
