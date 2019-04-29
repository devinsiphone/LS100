puts 'hello '.+ 'world'
puts (10.* 9).+ 9

iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s +
     ' characters in your name, ' + name + '?'

# write a program which asks for your first, middle, and last names
# individually, and then adds those lengths together
puts 'What is your first name?'
fname = gets.chomp
puts 'What is your middle name?'
mname = gets.chomp
puts 'What is your last name?'
lname = gets.chomp
length = fname.length + mname.length + lname.length
fullname = fname + ' ' + mname + ' ' + lname
puts 'Did you know there are ' + length.to_s + ' letters in your name, ' + name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

# Write an Angry Boss program. It should rudely ask what you want. Whatever you
# answer, the Angry Boss should yell it back to you, and then fire you. For
# example, if you type in I want a raise., it should yell back WHADDAYA MEAN
# "I WANT A RAISE."?!?  YOU'RE FIRED!!
puts 'What the hell do you want now?'
response = gets.chomp
puts 'WHADDAYA MEAN "' + response.upcase + '."?!? YOU\'RE FIRED!!'

# So here's something for you to do in order to play around more with
# center, ljust, and rjust: Write a program which will display a
# Table of Contents so that it looks like this:
#
#                Table of Contents
#
# Chapter 1:  Numbers                        page 1
# Chapter 2:  Letters                       page 72
# Chapter 3:  Variables                    page 118
lineWidth = 49
strtitle = 'Table of Contents'
strblank = ''
strchap1 = 'Chapter 1:  Numbers'
strchap2 = 'Chapter 2:  Letters'
strchap3 = 'Chapter 3:  Variables'
strpage1 = 'page 1'
strpage2 = 'page 72'
strpage3 = 'page 118'
puts strtitle.center(lineWidth)
puts strblank
puts strchap1.ljust(lineWidth/2) + strpage1.rjust(lineWidth/2)
puts strchap2.ljust(lineWidth/2) + strpage2.rjust(lineWidth/2)
puts strchap3.ljust(lineWidth/2) + strpage3.rjust(lineWidth/2)

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts((5-2).abs)
puts((2-5).abs)

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 0
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
