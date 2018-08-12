class Mechanic

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
  end

  def get_cars_from_mechanic
    Cars.all.select{ |car|
    car.mechanic==self }
  end

  def get_car_owners_from_mechanic
    get_cars_from_mechanic.map{ |car|
    car.owner  }
  end

  def get_car_owners_names_from_mechanic
    get_car_owners_from_mechanic.map{ |owner|
    owner.name  }
  end 

end
