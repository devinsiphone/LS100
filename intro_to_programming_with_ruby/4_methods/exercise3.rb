# Write a program that includes a method called multiply that takes two
# arguments and returns the product of the two numbers.

def multiply(a, b)
  return a * b
end

puts "Enter the multiplicand:"
num1 = gets.chomp.to_i
puts "Enter the multiplier:"
num2 = gets.chomp.to_i
puts "#{num1} * #{num2} = #{multiply(num1, num2)}"
