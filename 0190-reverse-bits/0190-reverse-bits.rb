# @param {Integer} n
# @return {Integer}
def reverse_bits(n)
    result = 0

    32.times do |i|
        last_bit = n & 1

        result <<= 1
        result = result | last_bit

        n >>= 1
    end

    result
end