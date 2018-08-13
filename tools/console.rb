require_relative '../config/environment.rb'
require "pry"
require_relative "../app/models/car_owner"
require_relative "../app/models/car"
require_relative "../app/models/mechanic"
def reload
  load 'config/environment.rb'
end
prius = Car.new("Toyota", "Prius", "Hybrid")
outback = Car.new("Subaru", "Outback", "Station Wagon")
civic = Car.new("Honda", "Civic", "Sedan")
#
johnny = CarOwner.new("Johnny", [civic, prius])
david = CarOwner.new("David", [outback])
lisa = CarOwner.new("Lisa", [civic, prius])

m1 = Mechanic.new("John", ["Sedan", "Hybrid"])
m2 = Mechanic.new("James", ["Hybrid", "Station Wagon"])
m3 = Mechanic.new("Bob", ["Station Wagon"])


binding.pry
