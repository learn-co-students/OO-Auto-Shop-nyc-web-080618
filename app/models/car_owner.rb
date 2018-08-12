class CarOwner
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Cars.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.avg_amount_cars
    Car.all.length.to_f/all.length
  end


end
