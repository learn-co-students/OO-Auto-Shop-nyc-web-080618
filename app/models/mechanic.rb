class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.car_owners(mechanic)
    cars = Car.all.select do |car|
      car.mechanic == mechanic
    end # cars =
    cars.map do |car|
      car.car_owner
    end.uniq # cars.map
  end # car_owners

  def self.find_all_cars(mechanic)
    Car.all.select do |car|
      car.mechanic == mechanic
    end # Car.all.select
  end # cars

  def self.car_owners_to_mechanic(mechanic)
    cars = Car.all.select do |car|
      car.mechanic == mechanic
    end # cars =
    cars.map do |car|
      car.car_owner.name
    end # cars.map
  end # car_owners_to_mechanic

end
