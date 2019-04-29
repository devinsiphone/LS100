# A method definition creates its own scope outside the regular flow of
# execution. This is why local variables within a method definition cannot be
# referenced from outside of the method definition. It's also the reason why
# local variables within a method definition cannot access data outside of the
# method definition (unless the data is passed in as a parameter).

a = 5

def some_method_1
  a = 3
end

puts a
puts ""


# Method invocation with a block
[1, 2, 3].each { |num|
  puts num
}
puts ""

# Method definition
def print_num(num)
  puts num
end


def some_method_2(number)
  number = 7  # this is implicitly returned by the method
end

a = 5
some_method_2(a)
puts a
puts ""
