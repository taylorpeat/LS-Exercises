# Problem 1

def interleave(arr1, arr2)
  new_array = []
  arr1.each.with_index do |el, idx|
    new_array += [el, arr2[idx]]
  end
  new_array
end

# puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Problem 2

def letter_case_count(string)
  lowercase = string.gsub(/[^a-z]/, '').size
  uppercase = string.gsub(/[^A-Z]/, '').size
  neither = string.delete('a-zA-Z').size
  { lowercase: lowercase, uppercase: uppercase, neither: neither }
end

# puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Problem 3

def word_cap(words)
  words.downcase.split(' ').map(&:capitalize).join(' ')
end

# puts word_cap('four score and seven') == 'Four Score And Seven'
# puts word_cap('the javaScript language') == 'The Javascript Language'
# puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Problem 4

def swapcase(string)
  new_string = string.chars.map do |ch|
    if ch.upcase == ch
      ch.downcase
    elsif ch.downcase == ch
      ch.upcase
    end
  end

  new_string.join('')
end

# puts swapcase('CamelCase') == 'cAMELcASE'
# puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Problem 5
def staggered_case(string)
  string.downcase!
  upcase = true

  string.chars.map do |ch|
    ch.upcase! if upcase
    upcase = !upcase
    ch
  end.join
end

# puts staggered_case('I Love Launch School!')
# puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Problem 6

def staggered_case2(string)
  upcase = false

  string.chars.map do |ch|
    next ch unless ch =~ /[a-z]/i
    upcase = !upcase
    upcase ? ch.upcase : ch.downcase
  end.join
end


# puts staggered_case2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# puts staggered_case2('ALL CAPS') == 'AlL cApS'
# puts staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Problem 7

def show_multiplicative_average(numbers)
  result = numbers.reduce(1.0, :*) / numbers.length
  puts "The result is #{sprintf('%.3f', result)}"
end

# puts show_multiplicative_average([3, 5])

# puts show_multiplicative_average([6])

# puts show_multiplicative_average([2, 5, 7, 11, 13, 17])

# Problem 8

def multiply_list(arr1, arr2)
  products = []
  
  arr1.each.with_index do |el, idx|
    products.push(el * arr2[idx])
  end

  products
end

# puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Problem 9

def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |el|
    el_products = arr2.map { |el2| el * el2 }
    products << el_products
  end

  products.flatten.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

