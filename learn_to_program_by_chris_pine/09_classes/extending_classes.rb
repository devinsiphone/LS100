# So we defined an integer method by jumping into the  Integer class, defining
# the method there, and jumping back out.
# We defined a method there (which makes it an integer method) and all integers
# can use it. Inside that method we use self to refer to the object
# (the integer) using the method.

class Integer
  def to_eng
    if self == 5
      english = "five"
    else
      english = "fifty-eight"
    end

    english
  end
end

# Test on a couple of numbers
puts 5.to_eng
puts 58.to_eng
