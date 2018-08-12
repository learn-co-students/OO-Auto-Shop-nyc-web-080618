class Car

  attr_reader :make, :model,:classification,:owner,:mechanic
  @@all = []

  def initialize(make, model, classification,owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    all.map{
    |car|car.classification }
  end

  def get_mechanic_from_classfication
    Mechanic.all.select{ |mechanic|
    mechanic.specialty==self.classification  }
  end
  
end
