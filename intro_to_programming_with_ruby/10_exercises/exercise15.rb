# Use Ruby's Array method delete_if and String method start_with? to delete all
# of the words that begin with an "s" in the following array.
#
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#
# Then recreate the arr and get rid of all of the words that start with "s" or
# starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |item|
  item.start_with?("s")
}

puts ""
puts "arr after deleting all words that begin with 's' => #{arr}"
puts ""

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |item|
  item.start_with?("s") || ("w")
}

puts ""
puts "arr after deleting all words that begin with 's' or 'w' => #{arr}"
puts ""
