# write a program which asks us to type in as many words as we want
# (one word per line, continuing until we just press Enter on an empty line),
# and which then repeats the words back to us in alphabetical order.
puts
list = []
puts 'Type in as many words as you want, one word per line.
When finished press Enter on an empty line.'
loop do
  word = gets.chomp
  list.push word
  break if word == ''
end

list.each_index do |first|
  list.each_index do |second|
    if list[first] < list[second]
      list[first], list[second] = list[second], list[first]
    end
  end
end

puts list
