class TopUSHotels::CLI

  def call
    TopUSHotels::Scraper.new.make_hotels
    puts "Read about the top 15 Hotels in the United States!"
    start
  end

  def start
    puts "Select a group of hotels: 1-5, 6-10, 11-15"
    input = gets.strip.to_i

    print_hotels(input)

    puts "Which hotel would you like to learn more about?"
    input = gets.strip
    hotel = TopUSHotels::Hotel.find(input.to_i)

    print_hotel(hotel)

    puts "Would you like to see more hotels? (y or n)"

    input = gets.strip.upcase
      if input == "Y"
        start
      else
        put "Enjoy your stay!"
        stop
      end
    end

    def print_hotel(hotel)
      puts "#{hotel.name} | ##{hotel.rank}"
      puts "-----"
      puts "Where to find it: #{hotel.location}"
      puts "-----"
      puts "About the hotel: #{hotel.description}"
    end
