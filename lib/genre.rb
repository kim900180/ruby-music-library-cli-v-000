class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
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
