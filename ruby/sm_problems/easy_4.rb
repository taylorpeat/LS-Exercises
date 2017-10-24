# Problem 1

def short_long_short(str1, str2)
  long_str = str1.length > str2.length ? str1 : str2
  short_str = long_str == str1 ? str2 : str1
  short_str + long_str + short_str
end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

# Problem 2

SPECIAL_SUFFIXES = {
  1 => 'st',
  11 => 'th',
  12 => 'th',
  13 => 'th',
}

NUMBER_SUFFIXES = { 
  0 => 'th',
  1 => 'st',
  2 => 'nd',
  3 => 'rd',
  4 => 'th',
  5 => 'th',
  6 => 'th',
  7 => 'th',
  8 => 'th',
  9 => 'th',
}

def century(year)
  century = (year / 100.to_f).ceil

  if SPECIAL_SUFFIXES.include?(century % 100)
    suffix = SPECIAL_SUFFIXES[century % 100]
  else
    suffix = NUMBER_SUFFIXES[century % 10]
  end

  century.to_s + suffix
end

# puts century(2000) == '20th'
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'


# Problem 3

def leap_year1?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true

# Problem 4

def leap_year?(year)
  if year < 1753
    year % 4 == 0
  else
    leap_year1?(year)
  end
end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == true
# puts leap_year?(1) == false
# puts leap_year?(100) == true
# puts leap_year?(400) == true

# Problem 5

def multisum(num)
  total = 0
  1.upto(num) do |i|
    total += i if i % 3 == 0 || i % 5 == 0
  end
  total
end

def multisum_inject(num)
  (1..num).reduce(0) { |sum, n| n % 3 == 0 || n % 5 == 0 ? sum + n : sum }
end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168


# Problem 5

def running_total(numbers)
  total = 0
  numbers.map { |n| total += n }
end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

# Problem 6
DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}
def string_to_integer(string)
  total = 0
  string.chars.each.with_index do |n, idx|
    total += DIGITS[n] * 10 ** (string.length - idx - 1)
  end
  total
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
