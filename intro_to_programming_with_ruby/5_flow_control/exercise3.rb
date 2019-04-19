# Write a program that takes a number from the user between 0 and 100 and
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def isbetween(i)
  if i >= 0 && i <= 50
    result = "between 0 and 50"
  elsif i >= 51 && i <= 100
    result = "between 51 and 100"
  elsif i > 100
    result = "greater than 100"
  else
    result = "a negative number"
  end
end


puts "Enter a number between 0-100:"
number = gets.chomp.to_i

answer = isbetween(number)
puts "The number you entered is #{answer}."
