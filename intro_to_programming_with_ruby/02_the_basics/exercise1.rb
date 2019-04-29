# Add two strings together that, when concatenated, return your first and last
# name as your full name in one string.
#
# For example, if your name is John Doe, think about how you can put "John" and
# "Doe" together to get "John Doe".

puts "What is your first name?: "
fname = gets.chomp
puts "What is your last name?: "
lname = gets.chomp
fullname = "#{fname} #{lname}"
puts "#{fullname}"
