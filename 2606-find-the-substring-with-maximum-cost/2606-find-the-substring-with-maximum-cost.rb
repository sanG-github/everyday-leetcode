# @param {String} s
# @param {String} chars
# @param {Integer[]} vals
# @return {Integer}
def maximum_cost_substring(s, chars, vals)
    hash = {}
    
    chars.chars.each_with_index { |char, i| hash[char] = vals[i] }

    max_util = []

    (0...s.length).each do |i|
        pre_max = i - 1 >= 0 ? max_util[i - 1] : 0
        val = value_for(s[i], hash)

        max_util[i] = [val, val + pre_max].max
    end

    [max_util.max, 0].max
end

def value_for(char, hash)
    return hash[char] if hash[char]

    ('a'..'z').to_a.index(char) + 1
end