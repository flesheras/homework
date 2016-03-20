Dominion_sets = {
  Dominion: [
  
  
  puts "So you wanna play Dominion....Excellent choice!  Please make sure you have either the Dominion base set or Dominion: Intrigue before we go any further.  You can't play without one of those.  Also, this game will accomodate 2-4 players."
puts "All set? (yes/no)"
answer = gets.strip
if answer == "yes"
  puts "Great! Lets get started!"
else 
  puts "Aww.  And I was so excited.  Oh well. Have a good day I guess..."
end

sets = Array.new

puts "Please tell me which set you're using.  (Dominion Base Set, Dominion: Intrigue, or both)"
first_choice = gets.strip
if first_choice == "Dominion Base Set"  
  puts "Good Choice.  Are you playing with antother expansion? (yes/no)"
elsif first_choice == "Dominion: Intrigue"
  puts "Good That has everything you need for a game.  Are you playing with any other expansions? (yes/no)"
else
  puts"Excellent.  You sure do like your Dominion.  Are you playing with any other expansions? (yes/no)"
end
sets_plus = gets.strip

if sets_plus == "no"
  puts "Fantasic!  Here's your game."
else 
  puts "What iother expansions would you like to play with? (Seaside, Prosperity, Hinterlands, Guilds, Cornucopia, Dark Ages Alchemy, Adventures)"
end

