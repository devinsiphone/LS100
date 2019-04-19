# Write a program so that you can interact with your baby dragon. You should be
# able to enter commands like  feed and walk, and have those methods be called
# on your dragon. Of course, since what you are inputting are just strings, you
# will have to have some sort of method dispatch, where your program checks
# which string was entered, and then calls the appropriate method.

class Dragon
  def initialize name
    @name             = name
    @asleep           = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine = 0   # He doesn't need to poop.

    puts "Welcome to the world, #{@name}!"
  end

  def feed
    puts "You feed #{@name}."
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts "You walk #{@name}."
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passageOfTime
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passageOfTime
    if @asleep
      @asleep = false
      puts "... but wakes when you stop."
    end
  end

  private
  # private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine
      @stuffInBelly -= 1
      @stuffInIntestine += 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end


puts ""
puts "Your dragon just hatched from it's egg!  What do you want to name him/her?"
name = gets.chomp
pet = Dragon.new(name)

loop do
  puts ""
  puts "What do you want to do with #{name}? (feed, walk, toss, rock, put to bed)"
  action = gets.chomp.downcase

  if (action == "feed")
    pet.feed
  elsif (action == "walk")
    pet.walk
  elsif (action == "toss")
    pet.toss
  elsif (action == "rock")
    pet.rock
  elsif (action == "put to bed")
    pet.putToBed
  else
    puts "I didn't understand you."
  end
end
