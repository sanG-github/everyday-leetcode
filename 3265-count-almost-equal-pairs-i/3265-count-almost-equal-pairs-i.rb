def count_pairs(nums)
  digits = nums.map { |n| n.digits }
  count = 0

  (0...nums.size).each do |i|
    (i + 1...nums.size).each do |j|
      a, b = normalize(digits[i], digits[j])
      count += 1 if almost_equal?(a, b)
    end
  end

  count
end

def normalize(a, b)
  max = [a.size, b.size].max

  [[0] * (max - a.size) + a, [0] * (max - b.size) + b]
end

def almost_equal?(a, b)
  diff = []

  a.each_index do |i|
    if a[i] != b[i]
      diff << i
      return false if diff.size > 2
    end
  end

  return true if diff.empty?
  return false unless diff.size == 2

  i, j = diff
  a[i] == b[j] && a[j] == b[i]
end
