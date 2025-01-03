# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    res = nil
    majority = 0

    nums.each do |num|
        # reset the majority element
        res = num if majority == 0

        num == res ? majority += 1 : majority -= 1
    end

    res
end