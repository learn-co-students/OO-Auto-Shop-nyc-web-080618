class CarOwner

  attr_reader :name, :cars
  @@all = []

  def initialize(name, cars)
    @name = name
      @cars = cars
      @@all << self
    end

    def self.all
      @@all
    end

  def list_of_cars
    self.cars
  end

  def list_of_specialty
    list_of_cars.map do |car|
      car.classification
    end
end

def list_of_mechanics
  Mechanic.all.select do |mechanic|
    list_of_specialty.include?(mechanic.specialty)
  end
end

def self.average_number_of_cars
  total = 0.0
  self.all.each do |car_owner|
    total += car_owner.cars.length
  end
  (total / CarOwner.all.length).round
end

end
