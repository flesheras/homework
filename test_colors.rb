require './colorize'
class TestColors
  include Colorize
end

test = TestColors.new
puts test.color
