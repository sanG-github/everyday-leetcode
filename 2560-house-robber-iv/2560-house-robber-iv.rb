# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_capability(nums, k)
  left = nums.min
  right = nums.max

  while left < right
    mid = (left + right) / 2
    count = 0
    i = 0

    while i < nums.length
      if nums[i] <= mid
        count += 1 # qualified house
        i += 2 # skip adjacent house
      else
        i += 1 # next house
      end
    end

    if count >= k
      right = mid # shrink the range to half left
    else
      left = mid + 1 # shrink the range to half right
    end
  end

  left
end
