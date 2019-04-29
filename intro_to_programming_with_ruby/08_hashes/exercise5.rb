# What method could you use to find out if a Hash contains a specific value in
# it? Write a program to demonstrate this use.
#
# My Answer:
# You could use the method #has_value? to find out if a hash contains  a
# specific value in it.

sample = {
  dog: 'woof',
  cat: 'meow',
  donkey: 'heehaw',
  cow: 'moo'
}

puts "Enter an animal sound?:"
sound = gets.chomp.to_s

if sample.has_value?(sound)
  puts "We found that sound!"
else
  puts "We couldn't find that sound."
end
