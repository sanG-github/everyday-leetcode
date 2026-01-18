# @param {Integer[]} nums
# @return {Boolean}
def can_sort_array(nums)
    num_bits = {}
    n = nums.length

    # precompute nums to occurrences of a number
    nums.each {|num| num_bits[num] = num.to_s(2).count('1') unless num_bits[num] }

    # swap same bit occurences
    1.upto(n-1) do |i|
        (i).downto(1) do |j|
            if nums[j] < nums[j-1]
                if num_bits[nums[j]] == num_bits[nums[j - 1]]
                    nums[j], nums[j - 1] = nums[j - 1], nums[j] # swap
                else
                    return false # not increasing, can't swap
                end             
            end
        end
    end

    true
end