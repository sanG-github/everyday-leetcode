# @param {Integer[]} security
# @param {Integer} time
# @return {Integer[]}
def good_days_to_rob_bank(security, time)
  n = security.length
  return (0...n).to_a if time == 0
  return [] if 2 * time + 1 > n

  non_inc = Array.new(n, 0)
  non_dec = Array.new(n, 0)

  # non-increasing prefix
  (1...n).each do |i|
    if security[i] <= security[i - 1]
      non_inc[i] = non_inc[i - 1] + 1
    end
  end

  # non-decreasing suffix
  (n - 2).downto(0) do |i|
    if security[i] <= security[i + 1]
      non_dec[i] = non_dec[i + 1] + 1
    end
  end

  result = []
  (time...(n - time)).each do |i|
    if non_inc[i] >= time && non_dec[i] >= time
      result << i
    end
  end

  result
end
