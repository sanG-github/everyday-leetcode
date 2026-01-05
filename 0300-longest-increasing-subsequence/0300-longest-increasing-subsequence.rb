# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
    dp = []

    nums.each do |h|
        # binary search vị trí thay thế
        # use binary search for the increasing array (log(n))
        idx = dp.bsearch_index { |x| x >= h } || dp.length
        dp[idx] = h
    end

    dp.length
end