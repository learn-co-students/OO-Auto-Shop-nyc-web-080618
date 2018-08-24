class Car

  attr_reader :make, :model, :classification
  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

def self.list_of_all_car_classification
all_cars  = self.all.map do |car|
    car.classification
  end
  all_cars.uniq
end

def self.list_of_mechanics
  Mechanic.all.select do |mechanic|
  self.list_of_all_car_classification.include?(mechanic.specialty)
end
end

end #end of code
