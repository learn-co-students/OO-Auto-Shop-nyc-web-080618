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

  def mechanic_service
    Car.all.select {|car| car.classification == self.specialty}
  end

  def list_owner
    mechanic_service.map{|mechanic|
       mechanic.car_owner
    }
  end

  def list_name
    list_owner.map{|owner|
      owner.name
    }
  end
  
end #end class
