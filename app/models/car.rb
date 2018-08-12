class Car
  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(model, owner, classification)
    @model = model
    @owner = owner
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

  def mechanic
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end #END CLASS
