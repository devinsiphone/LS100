# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
#
# 1. Get the value of key `:b`.
#
# 2. Add to this hash the key:value pair `{e:5}`
#
# 3. Remove all key:value pairs whose value is less than 3.5
#

h = {a:1, b:2, c:3, d:4}

puts ""
puts "The value of key ':b' is #{h[:b]}."
h[:e] = 5
puts "The key value pair '{e:5}' was added to the hash ... #{h}"
h.delete_if { |k,v| v < 3.5 }
puts "All key:value pairs whose value is less than 3.5 have been removed ... #{h}"
puts ""
