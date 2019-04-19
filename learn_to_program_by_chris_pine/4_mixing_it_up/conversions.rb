var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i
puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
puts 20
puts 20.to_s
puts '20'

puts gets

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'

# Write a program which asks for a person's first name, then middle, then last.
# Finally, it should greet the person using their full name.
puts 'What is your first name?'
fname = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp
puts 'Hello, ' + fname + ' ' + mname + ' ' + lname + '.'

# Write a program which asks for a person's favorite number. Have your program
# add one to the number, then suggest the result as a bigger and better favorite
# number.
puts 'What is your favorite number?'
favnum = gets.chomp
betternum = favnum.to_i + 1
puts 'Oh yea, well ' + betternum.to_s + ' is a way better number and junk!'
