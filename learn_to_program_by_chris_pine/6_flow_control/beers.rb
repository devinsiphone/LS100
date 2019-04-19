# Write a program which prints out the lyrics to that beloved classic, that
# field-trip favorite: "99 Bottles of Beer on the Wall."
numbeers = 100
while numbeers != 1
  numbeers = numbeers - 1
  puts numbeers.to_s + ' bottles of beer on the wall...'
  puts numbeers.to_s + ' bottles of beer!'
  puts 'Take one down and pass it around...'
  puts (numbeers - 1).to_s + ' bottles of beer on the wall!'
  puts ''
end
