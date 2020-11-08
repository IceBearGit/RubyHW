array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
p "array = #{array}"
p array.count
p '---------------------------'
p array.reverse
p '---------------------------'
p array.max
p '---------------------------'
p array.min
p '---------------------------'
p array.sort
p '---------------------------'
p array.sort { |x, y| y <=> x }
p '---------------------------'
p array.reject { |x| x.odd? }
p '---------------------------'
p array.find_all { |x| (x % 3).zero? }
p '---------------------------'
p array.uniq
p '---------------------------'
p array.map { |x| x.to_f / 10 }
p '---------------------------'
p array.find_all { |x| (x < 27) && (x > 0) }.map { |x| (x + 9).to_s(36) }
p '---------------------------'
def min_max_excange(array)
  array[array.index(array.min)], array[array.index(array.max)] = array.max, array.min
  p array
end
min_max_excange(array)
p '---------------------------'
p array[0...array.index(array.min)]
p '---------------------------'
def three_min_elements(array)
  res = array.sort.first 3
  p res[0..2]
end
three_min_elements(array)
p '---------------------------'
