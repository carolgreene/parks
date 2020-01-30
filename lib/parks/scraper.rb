class Parks::Scraper

  def self.scrape_parks     
    doc = Nokogiri::HTML(open('https://www.timeout.com/chicago/things-to-do/the-best-parks-in-chicago'))
    doc.css('header.xs-mb2').each do |info|
      park = Parks::Park.new
      #binding.pry
      park.name = info.search('h3').text.gsub(/\s+/," ").strip
      park.location = info.search('span').text.gsub(/\s+/," ").strip
      #binding.pry
    end
  end
        

end