class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = [ ]

  def self.all
    @@all
  end


  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

#Get a list of all car classifications
  def self.all_classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

#Get a list of mechanics that have an expertise that matches the car classification
  def get_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end.uniq
  end


end #end car class
