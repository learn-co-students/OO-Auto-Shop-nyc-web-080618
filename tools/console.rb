require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



mr_fix_it = Mechanic.new("Bob", "muscle")
avg_joe = Mechanic.new("Joe", "everyday")

jesse = CarOwner.new("Jesse")
henry = CarOwner.new("Henry")

camaro1 = Car.new("2018", "Camaro", "muscle", jesse, mr_fix_it)
camaro2 = Car.new("2017", "Camaro", "muscle", jesse, avg_joe)
camaro3 = Car.new("2017", "Camaro", "muscle", henry, avg_joe)
camaro4 = Car.new("2018", "Camaro", "muscle", henry, mr_fix_it)
toyota1 = Car.new("2017", "Prius", "everyday", jesse, avg_joe)
toyota2 = Car.new("2018", "Prius", "everyday", jesse, mr_fix_it)
toyota3 = Car.new("2017", "Prius", "everyday", henry, avg_joe)
toyota4 = Car.new("2018", "Prius", "everyday", henry, mr_fix_it)


binding.pry
