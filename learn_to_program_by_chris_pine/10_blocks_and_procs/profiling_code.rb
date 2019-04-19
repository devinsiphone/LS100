# profiling_code.rb
# How simple! How elegant! With that tiny method, I can now easily time any
# section of any program that I want to; I just throw the code in a block and
# send it to profile. What could be simpler? In most languages, I would have to
# explicitly add that timing code (the stuff in profile) around every section
# which I wanted to time. In Ruby, however, I get to keep it all in one place,
# and (more importantly) out of my way!

def profile (descriptionOfBlock, &block)
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts "#{descriptionOfBlock}: #{duration.to_s} seconds"
end

profile "25000 doublings" do
  number = 1

  25000.times {
    number += number
  }

  # Show the number of digits in this HUGE number
  puts "#{number.to_s.length.to_s} digits"
end

profile "Count to a million" do
  number = 0

  1000000.times {
    number += 1
  }
end
