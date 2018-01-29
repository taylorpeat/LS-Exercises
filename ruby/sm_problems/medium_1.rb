# Problem 1

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# puts rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# puts rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]

# Problem 2

def rotate_rightmost_digits(num, n)
  left, right = num.divmod(10 ** n)
  left * 10 ** n + rotate_array(right.to_s.chars).join().to_i
end

# puts rotate_rightmost_digits(735291, 1) == 735291
# puts rotate_rightmost_digits(735291, 2) == 735219
# puts rotate_rightmost_digits(735291, 3) == 735912
# puts rotate_rightmost_digits(735291, 4) == 732915
# puts rotate_rightmost_digits(735291, 5) == 752913
# puts rotate_rightmost_digits(735291, 6) == 352917

# Problem 3

def max_rotation(num)
  digits = num.to_s.length
  digits.downto(2) do |i|
    num = rotate_rightmost_digits(num, i)
  end

  num
end

# puts max_rotation(735291)
# puts max_rotation(3) == 3
# puts max_rotation(35) == 53
# puts max_rotation(105) == 15 # the leading zero gets dropped
# puts max_rotation(8_703_529_146) == 7_321_609_845

# Problem 4
require 'pry'

def light_switcher(n)
  lights = Array.new(n)

  1.upto(n) do |i|
    lights.map!.with_index(1) { |light, idx| idx % i == 0 ? !light : light }
  end

  lights.map.with_index(1) { |on, idx| idx if on }.compact
end

# def light_switcher(n)
#   arr = []
#   i = 1
  
#   while (i ** 2) < n do
#     arr << i ** 2
#     i += 1
#   end
  
#   arr
# end

# p light_switcher(2)
# p light_switcher(5)
# p light_switcher(10)
# p light_switcher(1000)

# Problem 5

def diamond(n, num=1)
  puts ("*" * num).center(n)
  return if num >= n
  diamond(n, num + 2)
  puts ("*" * num).center(n)
end

diamond(1)
diamond(3)
diamond(9)

