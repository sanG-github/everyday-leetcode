# @param {Integer[]} nums
# @return {Integer}
def longest_balanced(nums)
    max_len = 0

    0.upto(nums.size - 1) do |i|
        even = Set.new
        odd  = Set.new

        i.upto(nums.size - 1) do |j|
            if nums[j].even?
                even << nums[j]
            else
                odd << nums[j]
            end

            max_len = [max_len, j - i +1].max if even.size == odd.size
        end
    end

    max_len
end
