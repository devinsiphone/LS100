# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

def factorial(i)
  return i.downto(1).inject(:*)
end

puts "The factorial of 5 is #{factorial(5)}"
puts "The factorial of 6 is #{factorial(6)}"
puts "The factorial of 7 is #{factorial(7)}"
puts "The factorial of 8 is #{factorial(8)}"
puts ""
puts "Enter a number to factorial: "
num = gets.chomp.to_i

puts "The factorial of #{num} is #{factorial(num)}"
