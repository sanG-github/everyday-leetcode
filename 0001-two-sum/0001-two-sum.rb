# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    nums.each_with_index do |pivot, index|
        remaining_index = nums.index(target - pivot)

        return [index, remaining_index] if remaining_index && remaining_index != index
    end
end