# Write a method that takes a string as argument. The method should return a
# new, all-caps version of the string, only if the string is longer than 10
# characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's
# String class has a few methods that would be helpful. Check the Ruby Docs!)

def capitalize(x)
  if x.length > 10
    return x.upcase
  end
end

puts "What word would you like to upcase?:"
word = gets.chomp

capped_word = capitalize(word)
puts "#{capped_word}"
