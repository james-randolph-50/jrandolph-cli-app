class TopUSHotels::Hotel
  attr_accessor :name, :rank, :location, :description

  @@all = []

  def initialize(name=nil, rank=nil, location=nil, description=nil)
    @name = name
    @rank = rank
    @location = location
    @position = position
    @@all << self
  end

  def self.all
    @@all?
  end

  def self.find(id)
    self.all[id-1]
  end
end
