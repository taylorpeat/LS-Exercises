def ascii_value(string)
  string.chars.reduce(0) { |sum, char| sum + char.ord }
end

# puts ascii_value('Four score') == 984
# puts ascii_value('Launch School') == 1251
# puts ascii_value('a') == 97
# puts ascii_value('') == 0


MIN_IN_DAY = 24 * 60

def time_of_day(min)
  time = MIN_IN_DAY + min
  minutes = (time % 60).to_s
  hours = (time % MIN_IN_DAY / 60).to_s
  hours.rjust(2, '0') + ":" + minutes.rjust(2, '0')
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"