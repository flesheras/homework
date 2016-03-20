def high_number
  puts "High number:"
  high_number = gets.strip.to_i
end

def low_number
  puts "Low number:"
  low_number = gets.strip.to_i
end

def how_many
  puts "Now give me one more number.  I know. I know. I sound demanding.  Just follow my instructions."
  how_many = gets.strip.to_i
end

def range(high, low, many)
  numbers = (low..high).to_a
  mixed_up = Array.new
  many.times do
    random_number = numbers.sample
    mixed_up << random_number
  end
  p mixed_up
end

def in_order(chosen_numbers)
  puts "Now I shall put the numbers in order (because that's what you do.)"
  right_order = chosen_numbers.sort
  p right_order
end

def sum(chosen_numbers)
  new_sum = chosen_numbers.reduce(:+)
end

def mean(total, many)
  average= total / many.to_f 
  puts "The average is #{average}."
end

def middle_total(usable_array)
  middle_sum = usable_array[usable_array.length / 2] + usable_array[(usable_array.length / 2) -1]
end

def median(usable_array,middle_sum)
  if usable_array.length.odd?
    mid = usable_array[(usable_array.length - 1)/2]
  else mid = middle_sum / 2.to_f
  end
  puts "The median is #{mid}"
end

def run
  puts "Hello!  Help me with my homework.  My dog tried to eat my computer."
  "Give me a high number and a low number."
  high = high_number
  low = low_number
  many = how_many
  chosen_numbers = range(high, low, many)
  usable_array = in_order(chosen_numbers)
  total = sum(chosen_numbers)
  average = mean(total, many)
  middle_sum = middle_total(usable_array)
  middle = median(usable_array, middle_sum)
end

run





