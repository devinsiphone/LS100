# Write a while loop that takes input from the user, performs an action, and
# only stops when the user types "STOP". Each loop can get info from the user.

input = ""
while input != "STOP"
  puts "GO or STOP?:"
  input = gets.chomp.to_s.upcase
end
