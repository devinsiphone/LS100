# passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each { |number|
    proc.call(number)
  }
end

proc = Proc.new { |number|
  puts "#{number}. Proc being called in the method!"
}

take_proc(proc)


# The code above passing a proc into the method results in the same outcome as
# the code below where we are NOT passing a proc into the method.


def take_proc2
  [1, 2, 3, 4, 5].each do |number|
    puts "#{number}. Proc being called in the method!"
  end
end

take_proc2
