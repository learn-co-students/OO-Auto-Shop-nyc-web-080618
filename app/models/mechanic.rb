class Mechanic
  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Cars.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    cars.map do |car|
      car.owner
    end.uniq
  end

  def car_owner_names
    car_owners.map do |owner|
      owner.name
    end
  end

end
