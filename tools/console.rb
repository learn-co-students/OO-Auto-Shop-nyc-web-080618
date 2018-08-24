require_relative '../config/environment.rb'
require "pry"
require_relative '../app/models/car_owner'
require_relative '../app/models/car'
require_relative '../app/models/mechanic'


def reload
  load 'config/environment.rb'
end

prius = Car.new("Toyota", "Prius", "Hybrid")
camry = Car.new("Toyota", "Camry", "Sedan")
outback = Car.new("Subaru", "Outback", "Station Wagon")
rav4 = Car.new("Toyota", "Rav4", "Suv")
accord = Car.new("Honda", "Accord", "Sedan")

johnny = CarOwner.new("Johnny", [outback, prius])
lisa = CarOwner.new("Lisa", [accord, rav4])
david = CarOwner.new("David", [camry, outback, prius])



m1 = Mechanic.new("Harry", "Hybrid")
m2 = Mechanic.new("John", "Sedan")
m3 = Mechanic.new("Gary", "Suv")
m4 = Mechanic.new("James", "Station Wagon")


binding.pry
