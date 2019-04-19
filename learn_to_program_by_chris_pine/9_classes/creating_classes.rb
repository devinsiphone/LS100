# creating_classes.rb

class Die
  def initialize
    # I'll just roll the die, though we could do something else if we wanted to,
    # like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)  # @ means instance variable
  end

  def showing
    @numberShowing
  end

  def set(number)
    if cheat?(number) != true  # Method names can end with "?".
      @numberShowing = number  # Usually, we only do this if the method
    end                        # returns true or false
  end

  private
  # private" means that the methods defined here are
  # methods internal to the object.

  def cheat?(number)
    if number > 6 || number < 1
      puts "Die must be set with a value between 1-6"
      true
    end
  end
end

# Let's make a couple of dice
dice = [Die.new, Die.new]

# Let's show what the dice are before rolling
puts ""
dice.each { |die|
  puts "Before the first roll the die are showing #{die.showing}"
}

# Let's set the dice how we want
puts ""
dice.each { |die|
  die.set(1)
  puts "We set the die with a one showing => #{die.showing}"
  # die.set(8)
  # puts "We try to set the die with an eight showing => #{die.showing}"
}

# and roll them
puts ""
dice.each { |die|
  die.roll
  puts "After the roll the die are now showing #{die.showing}"
}
puts ""
