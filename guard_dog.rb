class Animal
  attr_accessor :name

  def initialize (name, legs = 4)
    @name = name
    @legs = legs
  end
end

class Dog < Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def bark
    puts 'Arf!'
  end
end

class GuardDog < Dog

  attr_accessor :strength

  def initialize(name, strength)
    @strength = strength
    super(name)
  end

  def bark
    puts 'Stop in the name of the law!'
  end

  def attack
    puts "Did #{rand(strength)} damage!"
  end
end

