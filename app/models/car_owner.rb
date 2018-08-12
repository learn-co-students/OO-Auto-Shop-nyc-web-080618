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

  def self.average_num_of_cars
    total_owners = self.all.count
    total_cars = Car.all.count
    return (total_cars / total_owners).to_f
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

end #END CLASS
