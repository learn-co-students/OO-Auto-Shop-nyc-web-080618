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


# Get a list of all cars that a mechanic services
def cars
  car_arr = Car.all.select do |car_ob|
    #binding.pry
      car_ob.mechanic == self
  end
  car_arr.map do |car_ob|
    car_ob
  end
end # end of cars instance method

# Get a list of all the car owners that go to a specific mechanic
def car_owners
  car_owners_arr = Car.all.select do |car_ob|
    #binding.pry
      car_ob.mechanic == self
  end
  car_owners_arr.map do |car_ob|
    car_ob.owner
  end
end # end of car_owners instance method

# Get a list of the names of all car owners who go to a specific mechanic
def car_owner_names
  car_owners_arr = Car.all.select do |car_ob|
    #binding.pry
      car_ob.mechanic == self
  end
  car_owners_arr.map do |car_ob|
    car_ob.owner.name
  end
end # end of car_owner_names

end # end of Mechanic Class
