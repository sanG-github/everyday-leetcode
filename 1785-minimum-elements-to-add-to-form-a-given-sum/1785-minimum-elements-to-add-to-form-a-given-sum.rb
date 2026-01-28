# @param {Integer[]} nums
# @param {Integer} limit
# @param {Integer} goal
# @return {Integer}
def min_elements(nums, limit, goal)
    sum = nums.sum

    if goal < 0
        sum = -sum
        goal = -goal
    end

    gap = (goal - sum).abs

    return 0 if gap == 0
    return 1 if gap <= limit

    quotient = gap / limit
    remainder = gap % limit

    return remainder == 0 ? quotient : quotient + 1
end