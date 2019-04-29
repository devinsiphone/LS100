# Why does the following code...
#
# def execute(block)
#   block.call
# end
#
# execute { puts "Hello from inside the execute method!" }
# Give us the following error when we run it?
#
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'
#
#
# My Answer:
#
# The code throws an ArgumentError because the 'execute' method's argument
# 'block' is missing the preceding ampersand to accept a proc as an argument.
