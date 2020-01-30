class Parks::Park
    attr_accessor :name, :location

  def self.all
    #need to scrape for actual data
    self.scrape_parks
  end

end
    
    
