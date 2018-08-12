require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner1 = CarOwner.new("car_owner1")
car_owner2 = CarOwner.new("car_owner2")
car_owner3 = CarOwner.new("car_owner3")
car_owner4 = CarOwner.new("car_owner4")

mechanic1 = Mechanic.new("mechanic1", "classification1")
mechanic2 = Mechanic.new("mechanic2", "classification2")
mechanic3 = Mechanic.new("mechanic3", "classification3")
mechanic4 = Mechanic.new("mechanic4", "classification4")

car1 = Car.new(car_owner1, "make1", "model1", "classification1")
car2 = Car.new(car_owner4, "make2", "model2", "classification2")
car3 = Car.new(car_owner2, "make3", "model3", "classification1")
car4 = Car.new(car_owner3, "make4", "model4", "classification3")
car5 = Car.new(car_owner1, "make5", "model5", "classification3")


binding.pry
