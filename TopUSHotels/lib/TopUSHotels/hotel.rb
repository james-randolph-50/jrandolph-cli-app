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

  def name
    @name ||= doc.search("a.ellipsis-text search-results-link").text
  end

  def rank
    @rank ||= doc.search(".block-tight search-results-ranking-heading").text
  end

  def location
    @location ||= doc.search(".block-tight text-small").text
  end

  def description
    @description ||=
  end

end
