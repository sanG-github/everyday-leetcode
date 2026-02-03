# @param {String} s
# @return {Integer}
def min_length_after_removals(s)
    nums_a = s.count('a')
    nums_b = s.size - nums_a

    s.size - ([nums_a, nums_b].min * 2)
end