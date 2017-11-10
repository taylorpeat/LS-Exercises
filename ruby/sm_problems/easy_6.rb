# Problem 1

MIN_PER_DEG = 60
SEC_PER_DEG = 3600

def dms(num)
  deg, min_sec = num.divmod(1)
  min, sec = (min_sec * SEC_PER_DEG).round(0).divmod(60)
  format(%(%d\xC2\xB0%02d'%02d\"), deg, min, sec)
end

# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
# puts dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Problem 2

def remove_vowels(words)
  words.map { |word| word.gsub(/[aeiou]/i, '')}
end

# puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Problem 3

def find_fibonacci_index_by_length(digits)
  target_number = 10 ** (digits - 1)
  recent_nums = [1,1]
  idx = 2
  
  while recent_nums[1] < target_number
    num = recent_nums.reduce(:+)
    recent_nums.push(num).shift
    idx += 1
  end

  idx
end

def find_fibonacci_index_by_length2(digits)
  num = 1
  old_num = 1
  idx = 2
  time = Time.now
  
  while num.to_s.length < digits
    num += old_num
    old_num = num - old_num
    idx += 1
  end

  puts "Time elasped was " + (Time.now - time).to_s
  idx
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847