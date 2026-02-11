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
        if num == 3
            1
        elsif num == 5
            4
        elsif num == 7
            3
        elsif num % 8 == 7 # 111
            if num.to_s(2).count('1') == num.to_s(2).length
                num / 2
            else
                count = 0

                while num & 1 == 1
                    num >>= 1
                    count += 1
                end

                num <<= 1
            
                while count - 1 > 0
                    num <<= 1
                    num = num | 1

                    count -= 1
                end

                num
            end
        elsif num % 8 == 3 # 011
            num - 2
        elsif num % 4 == 1
            num - 1
        else -1
        end
    end
end