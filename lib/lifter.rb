class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def self.all
    @@all
  end

  def membership
    Membership.all.select {|m| m.lifter == self}
  end

  def gym
    membership.map {|m| m.gym}
  end

  def self.average_lift_total
    total_lifts = self.all.inject(0) {|sum,l| sum + l.lift_total}
    (total_lifts / self.all.size.to_f).round(2)
  end

  def total_cost
    membership.inject(0) {|sum, m| sum + m.cost}
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end

end
