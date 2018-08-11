class Car

  attr_reader :make, :model, :classification, :owner

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_classifications
    self.all.map do |car|
      car.classification
    end
  end

  def my_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end
end
