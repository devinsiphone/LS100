# Write a method that counts down to zero using recursion.

def countdown(i)
  puts i
  if i != 0
    countdown(i - 1)
  end
end

puts "Enter a number to countdown from:"
i = gets.chomp.to_i
countdown(i)
