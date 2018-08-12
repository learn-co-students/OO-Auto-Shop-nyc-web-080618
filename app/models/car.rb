class Car
  @@all= []
  attr_reader :make, :model,:car_owners, :mechanic, :classification

  def initialize(make, model, classification,car_owners,mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owners = car_owners
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map do |car|
      car.classification
    end
  end

  def mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == car.classification
    end
  end
end
