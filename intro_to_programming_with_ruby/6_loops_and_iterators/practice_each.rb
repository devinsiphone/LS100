# practice_each.rb

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
x = 1

names.each { |name|
  puts "#{x}. #{name}"
  x += 1
}
