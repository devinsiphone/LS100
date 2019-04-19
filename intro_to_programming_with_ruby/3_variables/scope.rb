# scope

a = 5         # variable is initialized in the outer scope

3.times { |n| # method invocation with a block
  a = 3       # is a accessible here in an inner scope?
  b = 5       # b is initialized in the inner scope. Is b accessible outside?
}

puts "a = #{a}"
# puts "b = #{b}"


arr = [1, 2, 3]

for i in arr do
  a = 5
end

puts "a = #{a}"
