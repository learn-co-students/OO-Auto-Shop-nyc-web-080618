class Car

attr_reader :make, :model, :classification, :owner, :mechanic

@@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

def self.all
  @@all
end


# Get a list of all car classifications
def self.classifications
  class_arr = Car.all.map do |car_ob|
    #binding.pry
    car_ob.classification
  end
  class_arr
end # end of car classifications Class Method


# Get a list of mechanics that have an
# expertise that matches the car classification
def mechanics
  Mechanic.all.select do |mechanic_ob|
    #binding.pry
    mechanic_ob.specialty == self.classification
  end
end # end of mechanics instance method

end # end of Car Class
