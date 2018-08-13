class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.cars_by_owner(owner)
    Car.all.select do |car|
      car.car_owner == owner
    end # Car.all.select
  end # car_owners

  def self.owners_mechanics(owner)
    cars = Car.all.select do |car|
      car.car_owner == owner
    end # cars =
    cars.map do |car|
      car.mechanic
    end.uniq # cars.map
  end # self.owners_mechanics

  def self.average_car_per_owner
    (Car.all.length / @@all.length).to_f
  end # self.average_car_per_owner

end
