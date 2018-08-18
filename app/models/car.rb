class Car

  attr_reader :make, :model, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all < self
  end

  def self.all
    @@all
  end

  def self.classifications
    all.collect do |car|
      car.classification
    end.uniq
  end

  def suitable_mechanics
    Mechanic.all.select do |mech|
      mech.specialty == self.classification
    end
  end

end
