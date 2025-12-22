# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    set = Set.new(nums)    
    n = 0
    length = 0
    longest = 0

    set.each do |num|
        next if set.include?(num - 1)
        
        length = 0
        n = num

        while set.include?(n)
            length += 1
            n += 1
            longest = longest >= length ? longest : length
        end
    end

    longest
end