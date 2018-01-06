class TopUSHotels::Scraper

  def get_page
    Nokogiri::HTML(open("https://travel.usnews.com/hotels/usa/"))
  end

  
