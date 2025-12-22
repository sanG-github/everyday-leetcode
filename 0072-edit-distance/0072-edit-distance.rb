# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
    n1 = word1.length
    n2 = word2.length

    # stores the minimum number of operations at each position
    dp = Array.new(n1 + 1) { Array.new(n2 + 1, Float::INFINITY) }

    # initializing the base case
    # update last row to values based on the length of other string
    (n2).downto(0) do |j|
        dp[n1][j] = n2 - j
    end

    # update last column to values based on the length of other string
    (n1).downto(0) do |i|
        dp[i][n2] = n1 - i
    end

    (n1 - 1).downto(0).each do |i|
        (n2 - 1).downto(0).each do |j|
            if word1[i] == word2[j]
                dp[i][j] = dp[i + 1][j + 1]
            else
                dp[i][j] = 1 + [ # because we need to do atleast one operation
                    dp[i][j + 1], # insert
                    dp[i + 1][j], # delete
                    dp[i + 1][j + 1] # replace
                ].min
            end
        end
    end
    dp[0][0]
end