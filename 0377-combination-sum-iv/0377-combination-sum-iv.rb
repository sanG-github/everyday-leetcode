# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
    nums.sort!
    dp = Array.new(target + 1, 0)

    # Always have 1 approach to have sum = 0, do nothing
    dp[0] = 1

    # Calculate from small to big number, f(0), f(1), f(2), then f(n)
    1.upto(target) do |total|

        # Possible number can be used to sum up to get total
        nums.each do |num|
            break if num > total # can't use as num is already larger than total

            dp[total] += dp[total - num]
        end
    end

    dp[target]
end