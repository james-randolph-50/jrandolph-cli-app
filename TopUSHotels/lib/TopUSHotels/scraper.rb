class TopUSHotels::Scraper

  def get_page
    Nokogiri::HTML(open("https://travel.usnews.com/hotels/usa/"))
  end

def scrape
  doc.search(".search-content").children.css("div").each { |h|
	   h.name = h.search("a-ellipsis-text search-results-link").text
	   h.location = h.search(".block-tight text-small").text
   }
end

TopUSHotel::Hotel.new(name, rank, location, description)
