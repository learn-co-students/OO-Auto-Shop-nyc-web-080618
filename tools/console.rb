require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Instances of CarOwner Class
owner1 = CarOwner.new("Owner 1")
owner2 = CarOwner.new("Owner 2")
owner3 = CarOwner.new("Owner 3")
owner4 = CarOwner.new("Owner 4")


#Instances of Mechanic Class
tony = Mechanic.new("Tony Soprano", "Stolen")
sal = Mechanic.new("Sal", "Compact")
paulie = Mechanic.new("Paulie", "Truck")
mike = Mechanic.new("Mike", "Luxury")

#Instances of Car Class (make, model, classification, owner, mechanic)
car1 = Car.new("Honda", "Civic", "Compact", owner1, tony)
car2 = Car.new("Honda", "Prius", "Compact", owner1, sal)
car3 = Car.new("Ford", "F150", "Truck", owner2, paulie)
car4 = Car.new("Mercedes", "G", "Luxury", owner3, mike)


binding.pry
0
