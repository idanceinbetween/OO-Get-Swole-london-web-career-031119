# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Lifter 1", 10)
l2 = Lifter.new("Lifter 2", 20)
l3 = Lifter.new("Lifter 3", 30)

g1 = Gym.new("Gym 1")
g2 = Gym.new("Gym 2")
g3 = Gym.new("Gym 3")

m1 = Membership.new(l1,g1,100)
m2 = Membership.new(l2,g2,80)
m3 = Membership.new(l3,g3,60)
m4 = Membership.new(l2,g3,80)
m5 = Membership.new(l3,g2,60)
m6 = Membership.new(l3,g1,60)

binding.pry
puts "Gains!"
