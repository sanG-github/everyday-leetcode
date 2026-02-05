# @param {Integer[]} nums
# @return {Integer[]}
def construct_transformed_array(nums)
    arr = []
    n = nums.size

    nums.each_with_index do |num, i|
        index = (i + num) % n

        arr << nums[index]
    end

    arr
end