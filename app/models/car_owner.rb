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

# Get a list of all the cars that a specific owner has
def car_list
  car_arr = Car.all.select do |car_ob|
    #binding.pry
      car_ob.owner == self
  end
  car_arr.map do |car_ob|
    car_ob.model
  end
end # end of car_list instance method


# Get a list of all the mechanics that a specific owner goes to
def mechanics
  mechanic_arr = Car.all.select do |car_ob|
    #binding.pry
      car_ob.owner == self
  end
  mechanic_arr.map do |car_ob|
    car_ob.mechanic.name
  end
end # end of mechanics instance method


# Get the average amount of cars owned for all owners
def self.average_cars
  (Car.all.length.to_f / CarOwner.all.length.to_f)
end # end of self.average_cars Class Method



end # end of CarOwner Class
