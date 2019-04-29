# Look at the following programs...
#
# x = 0
# 3.times do
#   x += 1
# end
# puts x
#
# and...
#
# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x
#
# What does x print to the screen in each case? Do they both give errors? Are
# the errors different? Why?
#
# My Answer:
# At the end of the first code block x will equal 3.
# At the end of the second code block x will throw an error because it is not
# defined within scope. 
