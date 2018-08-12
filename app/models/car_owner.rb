class CarOwner

  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Cars.all.select {
      |car|car.owner==self
    }
  end

  def mechanic
    cars.map{ |car|
    car.mechanic  }
  end

  def self.average_amount_cars
    Cars.all.length.to_f/self.all.length.to_f
  end 

end
