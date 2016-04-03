class Animal
  attr_accessor :name

  def initialize(name, legs = 4)
    @name = name
    @legs = legs
  end
end

class Monkey < Animal
  attr_reader :name, :arms

  def initialize(name, arms = 2)
    @name = name
    @arms = arms
  end

  def make_sounds
    puts 'Eeh ooh ooh!'
  end
end

class FlyingMonkey < Monkey
  attr_reader :wings

  def initialize(name, wings, arms = 2)
    @wings = wings
    super(name, arms)
  end

  def throw_coconuts
    coconuts = rand(arms)
    damage = coconuts * wings
    puts "Threw #{coconuts} coconuts!  It did #{damage} damage."
  end
end

