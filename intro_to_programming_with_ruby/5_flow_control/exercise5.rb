# Rewrite your program from exercise 3 using a case statement. Wrap this new
# case statement in a method and make sure it still works.

def isbetween(i)
  result = case
  when (i >= 0) && (i <= 50)
    result = "between 0 and 50"
  when (i >= 51) && (i <= 100)
    result = "between 51 and 100"
  when (i > 100)
    result = "greater than 100"
  else
    result = "a negative number"
  end
end


puts "Enter a number between 0-100:"
number = gets.chomp.to_i

answer = isbetween(number)
puts "The number you entered is #{answer}."
