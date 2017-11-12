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

def find_fibonacci_index_by_lengthx(digits)
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

# puts find_fibonacci_index_by_length(2) == 7
# puts find_fibonacci_index_by_length(10) == 45
# puts find_fibonacci_index_by_length(100) == 476
# puts find_fibonacci_index_by_length(1000) == 4782
# puts find_fibonacci_index_by_length(10000) == 47847


# Problem 4

def reverse!(list)
  orig_length = list.length
  
  (orig_length - 1).downto(0) { |idx| list.push(list[idx]) }
  
  list.slice!(0, orig_length)
  list
end

# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# puts list.object_id == result.object_id

# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# puts list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# puts list == ["abc"]

# list = []
# reverse!(list) # => []
# puts list == []

# Problem 5

def reverse(list)
  list.map.with_index(1) { |_, idx| list[-idx] }
end

# puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
# puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# puts reverse(['abc']) == ['abc']              # => true
# puts reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# puts list.object_id != new_list.object_id  # => true
# puts list == [1, 2, 3]                     # => true
# puts new_list == [3, 2, 1]                 # => true

# Problem 6

def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

# puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Problem 7

def halvsies(arr)
  halfway = arr.length / 2
  arr2 = arr.slice!(halfway * -1, halfway)
  [arr, arr2]
end

# puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# puts halvsies([5]) == [[5], []]
# puts halvsies([]) == [[], []]

# Problem 8

def find_dup(arr)
  arr.each do |el|
    return el if arr.select { |el2| el == el2 }.length == 2
  end
end

# puts find_dup([1, 5, 3, 1]) == 1
# puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


# Problem 9

def include?(arr, search_el)
  arr.select { |el| el == search_el }.length > 0
end

# puts include?([1,2,3,4,5], 3) == true
# puts include?([1,2,3,4,5], 6) == false
# puts include?([], 3) == false
# puts include?([nil], nil) == true
# puts include?([], nil) == false

# Problem 10

def triangle(n)
  n.times do |i|
    puts ('*' * i).rjust(n)
  end
end

triangle(5)
triangle(9)