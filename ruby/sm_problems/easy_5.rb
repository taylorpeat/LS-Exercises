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

# puts after_midnight('00:00') == 0
# puts before_midnight('00:00') == 0
# puts after_midnight('12:34') == 754
# puts before_midnight('12:34') == 686
# puts after_midnight('24:00') == 0
# puts before_midnight('24:00') == 0

# Problem 4

def swap(words)
  words.split(' ').map { |word| switch_letters(word) }.join(' ')
end

def switch_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap('Abcde') == 'ebcdA'
# puts swap('a') == 'a'

# Problem 5

def cleanup(dirty_string)
  dirty_string.gsub(/\W/, ' ').gsub(/\s+/, ' ')
end

# puts cleanup("---what's my +*& line?") == ' what s my line '

# Problem 6

def word_sizes(words)
  sizes = Hash.new(0)
  
  words.split(' ').each { |word| sizes[word.length] += 1 }

  sizes
end

# puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# puts word_sizes('') == {}

# Problem 7

def word_sizes2(words)
  sizes = Hash.new(0)
  
  words.split(' ').each do |word|
    word_length = word.gsub(/\W/, '').length
    sizes[word_length] += 1
  end

  sizes
end

# puts word_sizes2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# puts word_sizes2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# puts word_sizes2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# puts word_sizes2('') == {}

# Problem #8

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten
                         eleven twelve thirteen fourteen fifteen sixteen
                         seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort do |num1, num2|
    NUMBER_WORDS[num1] <=> NUMBER_WORDS[num2]
  end
end

# puts alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# Problem #9

def crunch(string)
  string.gsub(/(.)\1+/, '\1')
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

