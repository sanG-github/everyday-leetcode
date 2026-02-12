# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
    first_ele = nums[0]
    
    nums.shift
    nums.sort!
    
    first_ele + nums[0] + nums[1]
end