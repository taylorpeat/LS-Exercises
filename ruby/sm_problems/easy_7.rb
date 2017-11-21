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

def staggered_case(string)
  string.downcase!
  upcase = true

  string.chars.map do |ch|
    ch.upcase! if upcase
    upcase = !upcase
    ch
  end.join('')
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def staggered_case2(string)
  string.downcase!
  upcase = true

  string.chars.map do |ch|
    if ch.upcase != ch
      ch.upcase! if upcase
      upcase = !upcase
    end

    ch
  end.join('')
end


puts staggered_case2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case2('ALL CAPS') == 'AlL cApS'
puts staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'




