# Problem 1

def interleave(arr1, arr2)
  new_array = []
  arr1.each.with_index do |el, idx|
    new_array += [el, arr2[idx]]
  end
  new_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']