require 'pry'
require 'rb-readline'

# Problem 1

def ascii_value(string)
  string.chars.reduce(0) { |sum, char| sum + char.ord }
end

# puts ascii_value('Four score') == 984
# puts ascii_value('Launch School') == 1251
# puts ascii_value('a') == 97
# puts ascii_value('') == 0

# Problem 2

MIN_IN_DAY = 24 * 60

def time_of_day(min)
  time = min % MIN_IN_DAY
  hours, minutes = time.divmod(60)
  format("%02d:%02d", hours, minutes)
end

# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

# Problem 3

MIN_PER_HOUR = 60
HOURS_PER_DAY = 24
MIN_PER_DAY = MIN_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_string)
  hours = time_string.slice(0, 2).to_i
  minutes = time_string.slice(-2, 2).to_i
  (hours * MIN_PER_HOUR + minutes) % MIN_PER_DAY
end

def before_midnight(time_string)
  hours = HOURS_PER_DAY - time_string.slice(0, 2).to_i - 1
  minutes = MIN_PER_HOUR - time_string.slice(-2, 2).to_i
  (hours * MIN_PER_HOUR + minutes) % MIN_PER_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0