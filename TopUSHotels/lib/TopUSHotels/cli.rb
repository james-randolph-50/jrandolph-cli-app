class TopUSHotels::CLI

  def call
    TopUSHotels::Scraper.new.make_hotels
    puts "Read about the top 15 Hotels in the United States!"
    start
  end

  def start
    puts "Select a group of hotels: 1-5, 6-10, 11-15"
    input = get_strip.to_i
