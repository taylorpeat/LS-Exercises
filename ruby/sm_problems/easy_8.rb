# Problem 1

def sum_of_sums(arr)
  arr.reverse.each.with_index(1).reduce(0) { |sum, (n, idx)| sum + n * idx }
end

# puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# puts sum_of_sums([4]) == 4
# puts sum_of_sums([1, 2, 3, 4, 5]) == 35

# Problem 2

def mad_libs
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adj = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp
  puts "\nDo you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!\n\n"
end

# mad_libs

# Problem 3

def substrings_at_start(string)
  string.chars.map.with_index(1) { |_, idx| string.slice(0, idx) }
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']