class TopUSHotels::CLI

  def call
    TopUSHotels::Scraper.new.make_hotels
    puts "Read about the top 15 Hotels in the United States!"
