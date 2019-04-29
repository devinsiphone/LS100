# One billion seconds... Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn?) one billion
# seconds old. Then go mark your calendar.

birth_time   = Time.mktime(1979, 4, 10, 13, 27)
puts "Devin turned one billions seconds old on " \
"#{one_billion_seconds_time = birth_time + 1000000000}"
