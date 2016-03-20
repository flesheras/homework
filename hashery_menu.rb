hashery_menu = {
  eggs: 2,
  hash: 3,
  jam: 1, 
  sausage: 2, 
  biscuit: (1..3)
}
hashery_menu.keys.each do |item|
  puts "Today we're serving: #{item}!"
end

hashery_menu.each do |item,price|
  puts "We've got #{item} for $#{price}. What a deal!"
end

puts "Here's what a biscuit'll run ya, depending on how much butter you want:"
hashery_menu[:biscuit].to_a.each do |price|
  puts "$#{price}"
end
hashery_menu[:random_special] = [2,4,6,8,10]
special = hashery_menu[:random_special].sample
puts "Today's special is $#{special}."

hashery_menu ['drinks'] = ['coffee', 'orange juice', 'tea']
hashery_menu.delete('drinks')
hashery_menu [:drinks] = {
  coffee: 1,
  orange_juice: 2, 
  tea: 1
}

puts "Our drinks are..."

hashery_menu[:drinks].keys.each do |drink|
  puts "#{drink}"
end
hashery_menu[:chunky_bacon] = 1





