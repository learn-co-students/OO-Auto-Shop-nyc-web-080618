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

  def my_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def my_mechanics
    my_cars.map do |car|
      car.mechanic
    end
  end

  def self.avg_num_cars
    (Car.all.length / CarOwner.all.length.to_f).round
  end

end
