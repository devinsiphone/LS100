a = Array.new + [12345]
b = String.new + 'hello'
c = Time.new

puts ""
puts "a = " + a.to_s
puts "b = " + b.to_s
puts "c = " + c.to_s
puts ""

time =  Time.new
time2 = time + 60

puts time
puts time2
puts ""

puts Time.mktime(2000, 1, 1)
puts Time.mktime(1979, 4, 10, 13, 27)
puts ""
