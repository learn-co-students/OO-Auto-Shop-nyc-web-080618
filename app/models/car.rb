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

  def self.all_classifications
    arr = []
    Car.all.each do |car|
      arr << car.classification
    end
    arr.uniq
  end

  def mechanics
    arr = []
    Mechanic.all.each do |mechanic|
    if mechanic.specialty.include?(self.classification)
      arr << mechanic
    end
    end
  arr.uniq
end

end
