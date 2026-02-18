# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
    signal = n ^ 1

    while n > 0
        last_bit = n & 1

        return false if signal == last_bit

        signal = last_bit
        n >>= 1
    end

    true
end