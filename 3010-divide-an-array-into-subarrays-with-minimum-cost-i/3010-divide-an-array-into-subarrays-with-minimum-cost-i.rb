# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
    arr = nums[1..-1].sort
    
    nums[0] + arr[0] + arr[1]
end