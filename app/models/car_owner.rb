class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_cars
    Car.all.select {|owner|
      owner.car_owner == self
    }
  end

  def find_classification
    get_cars.map {|owner|
      owner.classification
    }
  end

  def find_mechanics
    Mechanic.all.select{|mechanic|
      find_classification.include?(mechanic.specialty)
    }
  end

  def self.avg_cars_owned
    total_car = Car.all.length
    total_car.to_f / CarOwner.all.length
  end
end #end class
