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

# def diamond(n, num=1)
#   puts ("*" * num).center(n)
#   return if num >= n
#   diamond(n, num + 2)
#   puts ("*" * num).center(n)
# end

def diamond(n)
  n.times { |i| puts ("*" * ([i + 1, n - i].min * 2 - 1)).center(n) }
end

# diamond(1)
# diamond(3)
# diamond(9)

# Problem 6

def minilang(commands)
  @register = 0
  @stack = []

  def push
    @stack << @register.to_s
  end

  def add
    @register += @stack.pop.to_i
  end

  def sub
    @register -= @stack.pop.to_i
  end

  def mult
    @register *= @stack.pop.to_i
  end

  def div
    @register /= @stack.pop.to_i
  end

  def mod
    @register %= @stack.pop.to_i
  end

  def pop
    @register = @stack.pop.to_i
  end

  def print
    puts @register.to_s
  end

  commands.downcase.split.each do |command|
    if /\d/ =~ command
      @register = command.to_i
      next
    end

    eval command
  end

  puts "---"
end

# minilang('PRINT')
# # 0

# minilang('5 PUSH 3 MULT PRINT')
# # 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# minilang('5 PUSH POP PRINT')
# # 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12

# minilang('-3 PUSH 5 SUB PRINT')
# # 8

# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)


# Problem 7
DIGITS = { 
           "one" => 1, "two" => 2, "three" => 3,
           "four" => 4, "five" => 5, "six" => 6,
           "seven" => 7, "eight" => 8, "nine" => 9
         }

def word_to_digit(string)
  string.split(/\b/).map { |word| DIGITS.keys.include?(word) ? DIGITS[word] : word }.join
end

# puts word_to_digit('Please call me at five five five one two three four. Thanks.')
# puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Problem 8

# def fibonacci(n, seq=2, n1=1, n2=1)
#   seq >= n ? n2 : fibonacci(n, seq + 1, n2, n1 + n2)
# end

# Problem 9

def fibonacci(n)
  nums = [1,1]
  (n - 2).times do
    nums = [nums[1], nums.reduce(:+)]
  end
  nums[1]
end

puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(12) == 144
puts fibonacci(20) == 6765

