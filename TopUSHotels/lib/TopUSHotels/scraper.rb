class TopUSHotels::Scraper

  def get_page
    Nokogiri::HTML(open("https://travel.usnews.com/hotels/usa/"))
  end

def scrape
  doc.search(".search-content").children.css("div").each { |h|
	   h.name = h.search("a-ellipsis-text search-results-link").text
	   h.location = h.search(".block-tight text-small").text
     h.rank = h.search("block-tight search-result-ranking-heading strong").text
     h.description = h.search("description text-small pad-right-normal-for-small-only ellipsis-block-custom").text
   }
end

TopUSHotel::Hotel.new(name, rank, location, description)
