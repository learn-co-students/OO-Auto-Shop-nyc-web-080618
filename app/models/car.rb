class Car

  attr_reader :make, :model, :classification, :owner
  attr_accessor :mechanic

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

  def self.all_classifications
    self.all.map do |car|
      car.classification
    end
  end

  def matching_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

  def reassign_mechanic
    if !matching_mechanics.include?(self.mechanic)
      self.mechanic = matching_mechanics[0]
    end
  end
  
end
