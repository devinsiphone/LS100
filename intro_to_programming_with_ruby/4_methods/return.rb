# Now that you know what a method is and how it works, we can discuss the
# difference between puts and return. You haven't really been properly
# introduced to return but that's because in Ruby, every method returns the
# evaluated result of the last line that is executed.

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
