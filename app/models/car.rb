class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.car_classifications
    @@all.map do |car|
      car.classification
    end.uniq # all.map
  end # self.car_classifications

  def self.all_mechanics_by_classification(car_class)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == car_class
    end # Mechanic.all
  end # self.all_mechanics_by_classification

end
