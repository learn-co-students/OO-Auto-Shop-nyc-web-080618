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

def list_of_cars
  Car.all.select do |car|
  car.classification == self.specialty
 end
end


def list_of_owners
  CarOwner.all.select do |car_owner|
    !(car_owner.cars & list_of_cars).empty?
  end
end

def list_of_owners_name
  list_of_owners.map do |owner|
    owner.name
  end
end

end #end
