# how_many_seconds_old_am_i.rb

def add_commas(num_string)
  num_string.reverse.scan(/\d{3}|.+/).join(",").reverse
end

devins_birth_time =  Time.mktime(1979, 4, 10, 13, 27)
tabbis_birth_time =  Time.mktime(1978, 8, 1, 20, 03)
hunters_birth_time = Time.mktime(1998, 5, 19, 14, 43)

loop {
  current_time = Time.now
  devins_seconds_old =  current_time - devins_birth_time
  tabbis_seconds_old =  current_time - tabbis_birth_time
  hunters_seconds_old = current_time - hunters_birth_time
  puts ""
  puts "  Devin is #{add_commas(devins_seconds_old.floor.to_s)} seconds old"
  puts "Tabitha is #{add_commas(tabbis_seconds_old.floor.to_s)} seconds old"
  puts " Hunter is #{add_commas(hunters_seconds_old.floor.to_s)} seconds old"
  sleep 1
}
