require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kris = CarOwner.new('kris')
forrest = CarOwner.new('forrest')
lila = Mechanic.new('lila','car')
bob = Mechanic.new('bob','truck')
car1 = Car.new('toyota', 'a', 'car', kris, lila)
car2 = Car.new('bmw','b','car',forrest,bob)
binding.pry
