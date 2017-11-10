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

