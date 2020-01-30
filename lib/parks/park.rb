class Parks::Park
  attr_accessor :name, :location

  @@all = []

  def initialize(name = nil, location = nil, description = nil)
    @name = name
    @location = location
    @description = description
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
    
    
