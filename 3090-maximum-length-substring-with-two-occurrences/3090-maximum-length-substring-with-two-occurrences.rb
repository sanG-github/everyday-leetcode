# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
    freq = Hash.new(0)
    left = 0
    longest = 0

    s.each_char.with_index do |char, r|
        freq[char] += 1

        while freq[char] > 2 # shrink the range by moving left
            freq[s[left]] -= 1
            left += 1
        end

        longest = [longest, r - left + 1].max
    end

    longest
end