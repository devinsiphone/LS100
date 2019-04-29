# Use the dates from the previous example and store them in an array. Then make
# your program output the same thing as exercise 3.

movies = [
  ["12 Angry Men", 1957],
  ["Psycho", 1960],
  ["Citizen Kane", 1941],
  ["Sunset Boulevard", 1950],
  ["Casablanca", 1942],
  ["Gone with the Wind", 1939],
  ["2001: A Space Odyssey", 1968],
  ["Apocalypse Now", 1979],
  ["Some Like It Hot", 1959],
  ["The Maltese Falcon", 1941],
  ["The Godfather", 1972]
]

movies.each { |a,b|
  puts "#{b}"
}
