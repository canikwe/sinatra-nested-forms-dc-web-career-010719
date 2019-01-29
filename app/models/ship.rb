class Ship
  attr_accessor :ship, :type, :booty
  @@SHIP = []

  def initialize(name, type, booty)
    @name = ship
    @type = type
    @booty = booty
    @@SHIP << self
  end

  def self.all
    @@SHIP
  end

  def self.clear
    @@SHIP.clear
  end

end