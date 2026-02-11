# @param {Integer[]} nums
# @return {Integer[]}
def min_bitwise_array(nums)
    # 3 = 11 -> 1 bits are updatable
    # 5 = 101 -> 100 OR 101
    # 7 = 111 -> 100 OR 11
    # 11 = 1011 -> 1001 OR 1010
    # 13 = 1101 -> 1100 OR 1101

    # 01 -> 00 OR 01
    # 111 -> 100 OR 11
    # 011 -> 001 OR 010
    # 10 -> even number
    
    nums.map do |num|
        # even numbers can never be formed by x | (x + 1)
        next -1 if num.even?

        # count trailing 1s
        k = 0
        temp = num
        while (temp & 1) == 1
        k += 1
        temp >>= 1
        end

        # minimal x
        num - (1 << (k - 1))
    end
end