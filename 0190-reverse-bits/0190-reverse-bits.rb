# @param {Integer} n
# @return {Integer}
def reverse_bits(n)
    n.to_s(2).rjust(32, '0').chars.reverse.join.to_i(2)
end