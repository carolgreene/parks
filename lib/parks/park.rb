class Parks::Park
  attr_accessor :name, :location, :url, :summary

  @@all = []

  def initialize(name = nil, location = nil, description = nil, url = nil, summary = nil)
    @name = name
    @location = location
    @description = description
    @url = url
    @summary = summary
    save
  end

  def save 
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.find(id)
    self.all[id-1]
  end
  

end
    
    
