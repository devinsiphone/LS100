# You run the following code...
#
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
#
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
#
# What is the problem and how can it be fixed?
#
# My Answer:
#
# On the 2nd line of the code names['margaret'] is looking for an integer inside
# of the square brackets and instead finds a string that it cannot implicitly
# conver to an integer.
#
# I can only assume the intent here is to change the 'margaret' value to 'jody'.
# To do so we write
# names[3] = "jody"
