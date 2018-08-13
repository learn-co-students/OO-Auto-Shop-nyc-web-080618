class Mechanic

  attr_reader :name, :specialty

  @@all = [ ]

  def self.all
    @@all
  end


def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

#Get a list of all cars that a mechanic services
def cars
  Car.all.select do |car|
    car.mechanic == self
  end
end

#Get a list of all the car owners that go to a specific mechanic
def owners
  self.cars.map do |car|
    car.owner
  end.uniq
end

#Get a list of the names of all car owners who go to a specific me
def owners_names
  self.owners.map do |owner|
    owner.name
  end.uniq
end    



end #end mechanic class
