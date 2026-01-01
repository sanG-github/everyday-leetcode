# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @length = n
  res = []

  backtracking("", 0, 0, res)

  res
end

def backtracking(current, open, close, res)
    if current.length == 2 * @length
        res << current
        return
    end

    if open < @length
        backtracking(current + "(", open + 1, close, res)
    end

    if close < open
        backtracking(current + ")", open, close + 1, res)
    end
end
