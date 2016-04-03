dominion_sets = {
  "Dominion" => ["Cellar", "Chapel", "Moat", "Chancellor", "Villiage", "Woodcutter", "Workshopt", "Bureaucrat", "Feast", "Garden", "Militia", "Moneylender", "Remodel", "Smithy", "Spy", "Thief", "Throneroom", "Council Room", "Festival", "Laboratory", "Library", "Market", "Mine", "Witch", "Adventurer"], 
  "Intrigue" => ["Courtyard", "Pawn", "Secret Chamber", "Great Hall", "Masquerade", "Shanty Town", "Steward", "Swindler", "Wishing Well", "Baron", "Bridge", "Conspirator", "Coppersmith", "Ironworks", "Mining Village", "Scout", "Duke", "Minion", "Sabateur", "Torturer", "Trading Post", "Tribute", "Upgrade", "Harem", "Nobels"], 
  "Prosperity" => ["Loan", "Trade Route - You will need the Trade Route Mat and Victory Tokens", "Watchtower", "Bishop - You will need a Token Mat and Victory Tokens", "Monument - You will need a Token Mat and Victory Tokens", "Quarry", "Talisman", "Worker's Village", "City", "Contraband", "Counting House", "Mint", "Mountebank", "Rabble", "Royal Seal", "Vault", "Venture", "Goons - You will need a Token Mat and Victory Tokens", "Grand Market", "Hoard", "Bank", "Expand", "Forge", "King's Court", "Peddler"], 
}
puts "So you wanna play Dominion....Excellent choice!  Please make sure you have either the Dominion base set or Dominion: Intrigue before we go any further.  You can't play without one of those.  Also, this game will accomodate 2-4 players."
puts "All set? (yes/no)"
answer = gets.strip
while answer != "yes" && answer != "no"
  puts "Please answer 'yes' or 'no'."
  answer = gets.strip
end
if answer =="yes"
  puts "Great! Lets get started!"

  puts "Please tell me which set you're using.  (Dominion Base Set, Dominion: Intrigue, or both)"
  first_choice = gets.strip
  while first_choice != "Dominion Base Set" && first_choice != "Dominion: Intrigue" && first_choice != "both"
    puts "I don't believe that's an option.  Did you spell it correctly?  Did you capitalize where needed?"
    first_choice = gets.strip
  end
  if first_choice == "Dominion Base Set"  
    game = dominion_sets["Dominion"].sample(10)
    puts "Good Choice.  Are you playing with antother expansion? (yes/no)"
  elsif first_choice == "Dominion: Intrigue"
    game = dominion_sets["Intrigue"].sample(10)
    puts "Good That has everything you need for a game.  Are you playing with any other expansions? (yes/no)"
  elsif
    first_choice == "both"
    game  = (dominion_sets["Dominion"] + dominion_sets["Intrigue"]).sample(10)
    puts"Excellent.  You sure do like your Dominion.  Are you playing with any other expansions? (yes/no)"
  else 
    puts "okay"
  end
  sets_plus = gets.strip

  if sets_plus == "no"
    puts "Fantasic!  Here's your game."
    puts game
  else 
    puts "What other expansions would you like to play with? (Seaside, Prosperity, Hinterlands, Guilds, Cornucopia, Dark Ages Alchemy, Adventures)"
    sets_plus2 = gets.strip
    if first_choice == "Dominion  Base Set"
      game = (dominion_sets["Dominion"] + dominion_sets[sets_plus2]).sample(10)
      puts "Awesome! Here's your game."
      puts game
    elsif first_choice == "Dominion: Intrigue"
      game = (dominion_sets["Intrigue"] + dominion_sets[sets_plus2]).sample(10)
      puts "Awesome! Here's your game."
      puts game
    else
      game = (dominion_sets["Dominion"] + dominion_sets["Intrigue"] + dominion_sets[sets_plus2]).sample(10)
      puts "Awesome! Here's your game."
      puts game
      if rand(2) == 1
        puts "Use 'Platinum' and 'Colony' cards with this game."
      else 
        puts "Don't use 'Platinum' or 'Colony' cards with this game."
      end
    end
  end

else
  puts "Awww.  And I was so excited. Oh well.  Have a good day, I guess...."

end

