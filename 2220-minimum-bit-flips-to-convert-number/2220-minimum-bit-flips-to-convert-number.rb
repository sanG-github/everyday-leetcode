# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
    (start ^ goal).to_s(2).count('1')
end