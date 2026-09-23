# @param {Integer[]} nums
# @return {Boolean}
def is_middle_element_unique(nums)
    n = nums.size

    return true if n == 1

    mid = nums[(n - 1) / 2]
    frequency = nums.tally

    frequency[mid] == 1
end