# the_hash_class.rb

colorArray = []  # same as Array.new
colorHash = {}   # same as Hash.new

colorArray[0]         = "red"
colorArray[1]         = "green"
colorArray[2]         = "blue"
colorHash["strings"]  = "red"
colorHash["numbers"]  = "green"
colorHash["keywords"] = "blue"

colorArray.each { |color|
  puts color
}

colorHash.each { |codeType, color|
  puts "#{codeType} : #{color}"
}
