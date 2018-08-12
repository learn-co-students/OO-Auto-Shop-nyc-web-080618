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

  def cars #iterates thru Cars, selects car.classification == self, returns cars
    Car.all.select do |car|
      car.classification == self.specialty
    end
  end

  def car_owners #uses #cars, maps owners
    self.cars.map do |car|
      car.owner
    end
  end

  def car_owner_names #use #car_owner, map car owner names
    self.car_owners.map do |owner|
      owner.name
    end  
  end


end #END CLASS
