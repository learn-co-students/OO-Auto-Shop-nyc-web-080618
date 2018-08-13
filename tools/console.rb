require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#owners
a = CarOwner.new("a")
b = CarOwner.new("b")
c = CarOwner.new("c")
d = CarOwner.new("d")
e = CarOwner.new("e")





#mechanic
m1 = Mechanic.new("m1", "antique")
m2 = Mechanic.new("m2", "antique")
m3 = Mechanic.new("m3", "antique")
m4 = Mechanic.new("m4", "exotic")
m5 = Mechanic.new("m5", "clunker")




#cars
#initialize(make, model, classification, owner, mechanic)
c1 = Car.new("bmw", "1", "antique", a, m1)
c2 = Car.new("bmw", "1", "antique", b, m1)
c3 = Car.new("bmw", "1", "antique", c, m3)
c4 = Car.new("bmw", "3", "exotic", a, m4)
c5 = Car.new("ford", "2", "clunker", d, m5)



binding.pry
0
