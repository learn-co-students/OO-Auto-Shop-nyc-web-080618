class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all < self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def my_clients
    my_cars.collect do |car|
      car.owner
    end.uniq
  end

  def my_clients_names
    my_clients.collect do |client|
      client.name
    end
  end


end
