# Notice the difference between each print out? We have permanently modified the
# local variable a by passing it to the mutate method, even though a is outside
# the method definition's scope. This is because the pop method mutates the
# caller.

a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

def no_mutate(array)
  array.last
end

puts ""
p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

puts ""
p "Before no_mutate method #{a}"
no_mutate(a)
p "After no_mutate method #{a}"
