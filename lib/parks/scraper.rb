class Parks::Scraper

  def self.scrape_parks     
    doc = Nokogiri::HTML(open('https://www.timeout.com/chicago/things-to-do/the-best-parks-in-chicago'))
    doc.css('header.xs-mb2').each do |info|
      park = Parks::Park.new
      park.name = info.search('h3').text.gsub(/\s+/," ").strip
      park.location = info.search('span').text.gsub(/\s+/," ").strip
      park.url = "https://www.timeout.com" + info.search("a").first["href"]
      
    end
  end

  def self.scrape_description(park)
    #binding.pry
    detail = Nokogiri::HTML(open(park.url))
    park.summary = detail.search("span", itemprop = "reviewBody" "p" "strong").text.gsub(/\s+/," ").strip
    #binding.pry
  end

end