# Use the modulo operator, division, or a combination of both to take a 4 digit
# number and find the digit in the: 1) thousands place 2) hundreds place 3) tens
# place 4) ones place.

puts "What is your 4-digit pin code?: "
pin = gets.chomp.to_i
thousands = (pin / 1000)
hundreds = (pin / 100) - (thousands * 10)
tens = (pin / 10) - (thousands * 100) - (hundreds * 10)
ones = (pin / 1) - (thousands * 1000) - (hundreds * 100) - (tens * 10)

puts "Your pin's 1st digit is #{thousands}"
puts "Your pin's 2nd digit is #{hundreds}"
puts "Your pin's 3rd digit is #{tens}"
puts "Your pin's 4th digit is #{ones}"
