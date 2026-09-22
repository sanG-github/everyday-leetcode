# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def maximum_score(a, b, c)
    arr = [a, b, c].sort
    max = arr.last
    rest_sum = arr.sum - max

    return rest_sum if rest_sum < max
    return max if rest_sum == max

    max + (rest_sum - max) / 2
end
