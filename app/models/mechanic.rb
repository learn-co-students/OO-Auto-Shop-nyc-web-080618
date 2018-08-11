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

  def my_cars
    Car.all.select do |car|
      car.classification == self.specialty
    end
  end

  def my_owners
    my_cars.map do |car|
      car.owner
    end
  end

  def my_owner_names
    my_owners.map do |owner|
      owner.name
    end
  end
end
