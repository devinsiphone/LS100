# Write a program that calculates the squares of 3 float numbers of your
# choosing and outputs the result to the screen.

def square(num)
  return (num * num)
end


puts "Let's calculate the squares of 3 numbers."
puts "Number 1: "
num1 = gets.chomp.to_f
puts "Number 2: "
num2 = gets.chomp.to_f
puts "Number 3: "
num3 = gets.chomp.to_f

puts "The square of Number 1 is #{square(num1)}"
puts "The square of Number 2 is #{square(num2)}"
puts "The square of Number 3 is #{square(num3)}"
