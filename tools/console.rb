require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("Maddy")
owner2 = CarOwner.new("Owner")
owner3 = CarOwner.new("Alex")
owner4 = CarOwner.new("Nick")

mechanic1 = Mechanic.new("Bob", "antique")
mechanic2 = Mechanic.new("Larry", "exotic")
mechanic3 = Mechanic.new("Joe", "junker")

car1 = Car.new("Chevy", owner1, "antique")
car2 = Car.new("Honda", owner1, "junker")
car3 = Car.new("Lambo", owner2, "exotic")
car4 = Car.new("BMW", owner3, "junker")
car5 = Car.new("Mercedes", owner4, "antique")

binding.pry
