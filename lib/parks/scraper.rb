class Parks::Scraper

  def self.scrape_parks     
    #scrape parks from web- will adjust later to make them objects instead of strings
    #info listed below for parks & locations give correct tags to scrape for those items
    doc = Nokogiri::HTML(open('https://www.timeout.com/chicago/things-to-do/the-best-parks-in-chicago'))
    doc.css('header.xs-mb2').each do |info|
      park = Parks::Park.new
      binding.pry
      park.name = info.search('h3').text.gsub(/\s+/," ").strip
      park.location = info.search('span').text.gsub(/\s+/," ").strip
      #binding.pry
    end
  end
        

end