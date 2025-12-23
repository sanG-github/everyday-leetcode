# @param {Integer[]} nums
# @return {Integer}
def max_operations(nums)
    n = nums.length

    return 0 if n < 2

    sum_op = nums[0] + nums[1]
    ops = 1
    i = 2

    while i <= n - 2
        return ops if nums[i] + nums[i+1] != sum_op

        i += 2
        ops += 1
    end

    ops
end