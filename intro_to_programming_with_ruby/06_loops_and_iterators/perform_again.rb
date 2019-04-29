# perform_again.rb

loop {
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
}
