require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Owner1")
owner2 = CarOwner.new("Owner2")
owner3 = CarOwner.new("Owner3")

car1 = Car.new("make1", "model1", "classification1", owner1)
car2 = Car.new("make2", "model2", "classification2", owner2)
car3 = Car.new("make3", "model3", "classification3", owner3)
car4 = Car.new("make2", "model1", "classification3", owner3)

mechanic1 = Mechanic.new("mechanic1", "classification1")
mechanic2 = Mechanic.new("mechanic2", "classification2")
mechanic3 = Mechanic.new("mechanic3", "classification3")


binding.pry
