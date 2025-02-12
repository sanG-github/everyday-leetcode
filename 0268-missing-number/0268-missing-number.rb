# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    size = nums.length

    size * (size + 1) / 2 - nums.sum
end