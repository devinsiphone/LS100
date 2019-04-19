# Write a program which will ask for a starting year and an ending
# year, and then puts all of the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by four (like
# 1984 and 2004). However, years divisible by 100 are not leap years (such as
# 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which
# were in fact leap years).
puts 'Enter the starting year:'
startyear = gets.chomp.to_i
puts 'Enter the ending year:'
endyear = gets.chomp.to_i
for i in startyear..endyear
  if (i % 4 == 0) && (i % 100 != 0) || (i % 400 == 0)
    puts i.to_s + ' is a leap year.'
  end
end
