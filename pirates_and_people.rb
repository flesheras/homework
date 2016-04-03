class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    puts 'Hello!'
  end
end

class Pirate < Person
  def speak
    puts 'Arr!'
  end
end

