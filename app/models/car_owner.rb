class CarOwner

  attr_reader :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

#get all cars for specific owner
  def all_cars
    Car.all.select do |car|
      car.owner == self
    end
  end


#get all mechanics for specific owner
  def all_mechanics
    self.all_cars.map do |car|
      car.mechanic
    end
  end

#avg amount of car owned for all owners
  def self.avg_cars
    cars_array = self.all.map do |owner|
      owner.all_cars
    end

    number_array = cars_array.map do |owner|
      owner.size
    end

    total_cars = 0
    number_array.each do |num|
      total_cars += num
    end

    avg = total_cars.to_f/number_array.size

  end



end #end owner class
