# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
    k = nums.max
    concurrent = 0
    max_consecutive = 0

    nums.each do |num|
        if num == k
            concurrent += 1
            max_consecutive = [max_consecutive, concurrent].max
        else concurrent = 0 end
    end

    max_consecutive
end