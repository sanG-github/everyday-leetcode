# @param {Integer} n
# @return {Integer}

def climb_stairs(n)
    dp = Array.new(n + 1, 0)
    dp[0] = 1

    1.upto(n) do |total|
        dp[total] = dp[total-1] + dp[total-2]
    end

    dp[n]
end
