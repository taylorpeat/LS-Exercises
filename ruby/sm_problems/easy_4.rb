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

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'



