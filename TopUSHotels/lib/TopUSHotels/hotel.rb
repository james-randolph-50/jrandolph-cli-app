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
end
