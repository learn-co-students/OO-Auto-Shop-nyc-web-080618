class Mechanic
  @@all =[]
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
     car.car_owners
   end.uniq

 end

 def owner_names
   cars.map do |car|
     car.car_owners.name
   end
 end

end
