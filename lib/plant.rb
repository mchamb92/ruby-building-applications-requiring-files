
class Plant
  attr_accessor :garden, :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

lawn = Garden.new(name: 'Front Lawn') # we can call Plant.new because Garden is defined above

basil = Plant.new(name: 'Basil') # we can call Plant.new because Plant is defined above
basil.garden = lawn

cucumber = Plant.new(name: 'Cucumber')
cucumber.garden = lawn # we can associate a plant and a garden because both are defined above

p lawn.plants