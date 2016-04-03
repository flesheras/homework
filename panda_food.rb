require './colorize'

class PandaFood < Food
  include Colorize

  attr_reader :calories
  CALORIES_PER_SERVING = 1000

  def initialize
    @calories = CALORIES_PER_SERVING
    END
    END

