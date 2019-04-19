# Same as exercise1, but only print out values greater than 5.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each{ |number|
  if number > 5
    p number
  end
}
