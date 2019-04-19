# proc.rb

toast = Proc.new {
  puts "Cheers!"
}

toast.call
toast.call
toast.call
puts ""

#==============================================================

doYouLike = Proc.new { |aGoodThing|
  puts "I *really* like #{aGoodThing}!"
}

doYouLike.call "chocolate"
doYouLike.call "ruby"
puts ""

#==============================================================

def doSelfImportantly(someProc)
  puts "Everybody just HOLD ON! I have something to do..."
  someProc.call
  puts "Ok everyone, I'm done. Go on with what you were doing."
end

sayHello = Proc.new {
  puts "hello"
}

sayGoodbye = Proc.new {
  puts "goodbye"
}

doSelfImportantly sayHello
doSelfImportantly sayGoodbye
puts ""

#==============================================================

def maybeDo(someProc)
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo(someProc)
  someProc.call
  someProc.call
end

wink = Proc.new {
  puts "<wink>"
}

glance = Proc.new {
  puts "<glance>"
}

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance
puts ""

#==============================================================

def doUntilFalse(firstInput, someProc)
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new { |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                  # Take off the last number...
    array.push lastNumber**2   # ...and replace it with it's square...
    array.push lastNumber - 1  #...followed by the next smallest number.
  end
}

alwayFalse = Proc.new { |justIgnoreMe|
  false
}

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse("I'm writing this at 3:00 am; someone knock me out!", alwayFalse)
puts ""

#==============================================================

def compose proc1, proc2
  Proc.new { |x|
    proc2.call(proc1.call(x))
  }
end

squareIt = Proc.new { |x|
  x * x
}

doubleIt = Proc.new { |x|
  x + x
}

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)
puts ""

#==============================================================

class Array
  def eachEven(&wasABlock_NowAProc)
    # We start with "true" because arrays start with 0, which is even
    isEven = true

    self.each { |object|
      if isEven
        wasABlock_NowAProc.call object
      end


    isEven = (not isEven)  # Toggle from even to odd, or odd to even
    }
  end
end

["apple", "bad apple", "cherry", "durian"].eachEven { |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
}

# Remember, we are getting the even-numbered elements of the array, all of which
# happen to be odd numbers, just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven { |oddBall|
  puts "#{oddBall.to_s} is NOT an even number!"
}
puts ""

#==============================================================
