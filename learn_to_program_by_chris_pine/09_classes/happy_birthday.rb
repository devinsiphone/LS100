# Happy Birthday! Ask what year a person was born in, then the month, then the
# day. Figure out how old they are and give them a big SPANK! for each birthday
# they have had.

puts "What year were you born in? (enter year as xxxx):"
year_born = gets.chomp
puts "What month were you born in? (enter 01-12):"
month_born =  gets.chomp
puts "What day were you born in? (enter 01-31):"
day_born = gets.chomp

full_date_born = Time.mktime(year_born, month_born, day_born)
current_time = Time.now

seconds_old = current_time - full_date_born
years_old = seconds_old / 31556925

puts ""
puts "You are #{years_old.floor} years old."
