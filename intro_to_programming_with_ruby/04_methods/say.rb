# This is an example of a method definition named say.

def say(words = "hello")
  puts words + '.'  ## <= We only make the change here!
end

say()
say("hi")
say("how are you")
say("I'm fine")
