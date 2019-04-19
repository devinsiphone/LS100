# Look at Ruby's merge method. Notice that it has two versions. What is the
# difference between merge and merge!? Write a program that uses both and
# illustrate the differences.
#
# My Answer:
#
# hsh.merge(other_hash) Returns a new hash containing the contents of other_hash
# and the contents of hsh. If no block is specified, the value for entries with
# duplicate keys will be that of other_hash. Otherwise the value for each
# duplicate key is determined by calling the block with the key, its value in
# hsh and its value in other_hash. Is a Non-Destructive method.
#
# hsh.merge!(other_hash) Adds the contents of other_hash to hsh. If no block is
# specified, entries with duplicate keys are overwritten with the values from
# other_hash, otherwise the value of each duplicate key is determined by calling
# the block with the key, its value in hsh and its value in other_hash. Is a
# Destructive method.


hash_a = {
  w: 50,
  x: 100,
  y: 200,
  z: 300
}

hash_b = {
  f: 150,
  g: 100,
  x: 200,
  y: 400
}

puts ""
puts "=========================================="
puts ""
puts "hash_a = #{hash_a}"
puts ""
puts "hash_b = #{hash_b}"
puts ""
non_destructive_merge = hash_a.merge(hash_b)
puts "hash_a.merge(hash_b) => #{non_destructive_merge}"
puts "hash_a still maintains it's original data => #{hash_a}"
puts ""
destructive_merge = hash_a.merge!(hash_b)
puts "hash_a.merge!(hash_b) => #{destructive_merge}"
puts "hash_a has now been overwritten with the newly merged data => #{hash_a}"
puts ""
puts "=========================================="
puts ""
