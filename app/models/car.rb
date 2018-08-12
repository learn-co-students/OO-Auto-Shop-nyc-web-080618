class Car
  @@all = []

  attr_reader :make, :model, :owner, :classification, :mechanic

  def initialize(make, model, classification, owner, mechanic)
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

  def self.classifications
    all.map do |car|
      car.classification
    end
  end

  def specialty_classification_match
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end


end
