class Mechanic

  attr_reader :name, :specialty
  @@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars_fixed
  Car.all.select do |car|
  self.specialty.include?(car.classification)
  end
end

def car_owner
  CarOwner.all.select do |owner|
    !(owner.cars & self.cars_fixed).empty?
  end
end

def car_owner_name
  arr = []
  car_owner.each do |owner|
    arr << owner.name
  end
  arr
end
end
