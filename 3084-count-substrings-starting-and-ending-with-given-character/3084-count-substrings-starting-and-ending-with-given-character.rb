# @param {String} s
# @param {Character} c
# @return {Integer}
def count_substrings(s, c)
    hash = {}

    s.chars.each_with_index do |char, index|
        hash[char].nil? ? hash[char] = [index] : hash[char] << index
    end

    return 0 if hash[c].nil?

    count = hash[c].size

    count * (count + 1) / 2
end