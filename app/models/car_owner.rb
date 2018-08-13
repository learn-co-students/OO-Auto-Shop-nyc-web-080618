class CarOwner

  attr_reader :name, :cars
  @@all = []
  def initialize(name, cars)
    @name = name
    @cars = cars
    @@all << self
  end

def self.all
  @@all
end

def list_of_cars
  Car.all.select do |car|
    self.cars.include?(car)
  end
  end
def list_of_specialty
  arr = []
  self.list_of_cars.each do |car|
    arr << car.classification
  end
  arr
end

def mechanics
  Mechanic.all.select do |mechanic|
    self.list_of_specialty.include?(mechanic.specialty)
  end
end

def self.average_cars_owned
  total = 0
  CarOwner.all.each do |owner|
    total += owner.cars.length
  end
  (total.to_f / CarOwner.all.length).round
end
end
