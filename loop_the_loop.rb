we_wanna_ride = true
stops = ["East Bumpspark", "Endertromb Avenue", "New Mixico", "Mal Abochny"]
spots = stops.reverse 
while we_wanna_ride
  print "Where ya headin', friend?:"
  destination = gets.chomp
  destination = destination.split(" ")
  destination.map! do |word|
    word.capitalize
  end
  destination = destination.join(" ")
  starting_point = stops.index(destination) + 1
  if starting_point == stops.length
    starting_point = 0
  end
  ccstarting_point = spots.index(destination) + 1
  if ccstarting_point == spots.length
    ccstarting_point = 0
  end
  puts "Would you like to travel clockwise or counter-clockwise?"
  direction = gets.chomp
  if direction == "clockwise"
    if stops.include?(destination)
      puts "I know how to get to #{destination}"
      puts "Here's the station list:"
      (stops[starting_point..-1]).each { |s| puts s }
      (stops[0..stops.index(destination)]).each { |s| puts s }
    end
  elsif direction == "counter-clockwise"
    if spots.include?(destination)
      puts " I know how to get to #{destination}!"
      puts "Here's the station list:"
      (spots[ccstarting_point..-1]).each do |s| 
        puts s
        break if s == destination
      end
      (spots [0..spots.index(destination)]).each do |s| 
        puts s 
        break if s == destination
      end
    else
      puts "Sorry, we don't stop at that station.  Maybe another time!"
    end
    we_wanna_ride = false
  end
  puts "Are you done riding the train? (yes or no)"
  choice = gets.chomp
  if choice == "yes"
    we_wanna_ride = false
  end
end
