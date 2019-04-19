# Make an OrangeTree class. It should have a  height method which returns its
# height, and a  oneYearPasses method, which, when called, ages the tree one
# year. Each year the tree grows taller (however much you think an orange tree
# should grow in a year), and after some number of years (again, your call) the
# tree should die. For the first few years, it should not produce fruit, but
# after a while it should, and I guess that older trees produce more each year
# than younger trees... whatever you think makes most sense. And, of course, you
# should be able to countTheOranges (which returns the number of oranges on the
# tree), and pickAnOrange (which reduces the @orangeCount by one and returns a
# string telling you how delicious the orange was, or else it just tells you
# that there are no more oranges to pick this year). Make sure that any oranges
# you don't pick one year fall off before the next year.

class OrangeTree
  def initialize
    @tree_alive = true
    @age = 0
    @height = 0
    @number_of_oranges = 0
    @MAX_HEIGHT = 264
    @MAX_AGE = 50
  end

  def age
    return @age
  end

  def height
    return @height
  end

  def countTheOranges
    return @number_of_oranges
  end

  def pickAnOrange
    if (@number_of_oranges > 0)
      @number_of_oranges -= 1
      return "Yum, that orange was so delicious!"
    else
      return "There are no more oranges to pick this year."
    end
  end

  def is_tree_alive?
    return @tree_alive
  end

  def oneYearPasses
    @age += 1
    if @age >= 51
      @tree_alive = false
    end
    if @height < @MAX_HEIGHT
      @height += 64
    end
    case @age
    when 3
      @number_of_oranges = 30
    when 4
      @number_of_oranges = 111
    when 5
      @number_of_oranges = 192
    when 6
      @number_of_oranges = 273
    when 7
      @number_of_oranges = 354
    when 8
      @number_of_oranges = 435
    when 9
      @number_of_oranges = 516
    when 10
      @number_of_oranges = 597
    when 11..50
      @number_of_oranges = 678
    end
  end
end

tree = OrangeTree.new
loop do
  if (tree.is_tree_alive?)
    puts ""
    puts "The orange tree is #{tree.age} years old."
    puts "The orange tree is #{tree.height} inches tall."
    puts "The orange tree has #{tree.countTheOranges} oranges hanging from it."
    puts "We look to pick an orange from the orange tree. #{tree.pickAnOrange}"
    sleep 1
    tree.oneYearPasses
  else
    puts ""
    puts "The orange tree died :^("
    puts ""
    break
  end
end
