# Using some of Ruby's built-in Hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same
# thing except printing the values. Finally, write a program that prints both.

holiday_supplies = {
  "winter": [
    "lights",
    "tree",
    "champagne glasses"
  ],
  "summer": [
    "BBQ",
    "flags"
  ],
  "spring": [
    "BBQ"
  ],
  "fall": [
    "hot dogs"
  ]
}

puts ""
puts "Here are the keys:"
holiday_supplies.keys.each { |x|
  puts "#{x}"
}

puts ""
puts "Here are the values:"
holiday_supplies.values.each { |x|
  puts "#{x}"
}

puts ""
puts "Here are the keys with the values:"
holiday_supplies.keys.each { |k|
  puts ""
  puts "#{k}: "
  puts "#{holiday_supplies.fetch(k)}"
}
puts ""
