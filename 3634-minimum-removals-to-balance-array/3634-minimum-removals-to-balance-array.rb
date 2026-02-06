# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_removal(nums, k)
    n = nums.size

    return 0 if n == 1

    nums = nums.sort
    max_length = 1
    i = 0
    j = 1

    while i < n && j < n && i <= j
        if nums[i] * k >= nums[j]
            max_length = [max_length, j - i + 1].max
            j += 1
        else
            i += 1
        end

    end

    n - max_length
end