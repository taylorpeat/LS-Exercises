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

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917