require 'pry'

class Car

  attr_reader :make, :model, :car_owner, :classification

  @@all = []

  def initialize(car_owner, make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_classification
    self.all.map {|car|
      car.classification
    }
  end

  def get_mechanics
    Mechanic.all.select {|mechanic|
      mechanic.specialty == self.classification
    }
  end
end #end class
