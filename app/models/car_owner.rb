class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all < self
  end

  def self.all
    @@all
  end

  def my_cars
    Cars.all.select do |car|
      car.owner == self
    end
  end

  def my_mechanics
    my_cars.collect do |car|
      car.mechanic
    end
  end

  def self.avg_cars
    Car.all.length.to_f / all.length
  end




end
