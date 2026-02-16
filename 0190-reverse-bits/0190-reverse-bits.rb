# @param {Integer} n
# @return {Integer}
def reverse_bits(n)
    result = 0

    32.times do |i|
        result <<= 1
        result = result |  n & 1

        n >>= 1
    end

    result
end