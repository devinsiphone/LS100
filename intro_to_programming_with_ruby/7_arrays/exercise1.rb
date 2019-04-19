# Below we have given you an array and a number. Write a program that checks to
# see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

def is_it_in_array(array, number)
  array.include?(number)
end

if is_it_in_array(arr, number)
  puts "#{number} is in the array"
else
  puts "#{number} is NOT in the array"
end
