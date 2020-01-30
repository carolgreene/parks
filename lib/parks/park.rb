class Parks::Park
    attr_accessor :name, :location

  def self.all
    #need to scrape for actual data
    self.scrape_parks
  end

  def self.scrape_parks 
    
    #scrape parks from web- will adjust later to make them objects instead of strings
    #info listed below for parks & locations give correct tags to scrape for those items
    doc = Nokogiri::HTML(open('https://www.timeout.com/chicago/things-to-do/the-best-parks-in-chicago'))
    #parks = doc.css('header.xs-mb2').collect do |park|
     # park.css('h3').text.gsub(/\s+/," ").strip
    #end 
    #locations = doc.css('header.xs-mb2').collect do |loc|
      #loc.css('span').text.gsub(/\s+/," ").strip
    #end
    
    binding.pry
    parks

  end
end