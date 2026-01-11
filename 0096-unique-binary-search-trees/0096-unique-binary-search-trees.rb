# @param {Integer} n
# @return {Integer}
def num_trees(n)
  memo = Array.new(n + 1)

  dfs = lambda do |k|
    return 1 if k <= 1
    return memo[k] if memo[k]

    memo[k] = (0...k).reduce(0) do |sum, i|
      sum + dfs.call(i) * dfs.call(k - i - 1)
    end
  end

  dfs.call(n)
end
