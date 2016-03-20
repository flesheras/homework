#i = 1
#
#while i < 101
#  if i % 3 == 0 && i % 5 == 0
#    puts "fizzbuzz"
#  elsif i % 3 == 0
#    puts "fizz"
#  elsif i % 5 == 0
#    puts "buzz"
#  else 
#    puts i
#  end
#i = i + 1
#end
#
#
def run(number)
  output = ""
  if number % 3 == 0
    output += "fizz"
  elsif number % 5 == 0
    output += "buzz"
  end
  if output != ""
    return output
  end
  number
end

(1..100).each do |number|
  puts run(number)
end
