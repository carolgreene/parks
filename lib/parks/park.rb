class Parks::Park
  attr_accessor :name, :location, :url

  @@all = []

  def initialize(name = nil, location = nil, description = nil, url = nil)
    @name = name
    @location = location
    @description = description
    @url = url
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
    
    
