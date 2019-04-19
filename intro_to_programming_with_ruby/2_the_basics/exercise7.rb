# What does the following error message tell you?
#
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
#
# My Answer:
# Running a 2nd command inside interactive ruby shell there was a SyntaxError
# thrown where the compiler found an unexpected closed parentheses where it was
# expecting a closed curly brace. Most probably from a typo to close a method
# or perhaps a hash.
