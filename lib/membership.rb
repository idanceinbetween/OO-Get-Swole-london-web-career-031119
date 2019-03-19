class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    self.class.all << self
  end

  def self.all
    @@all
  end

end
