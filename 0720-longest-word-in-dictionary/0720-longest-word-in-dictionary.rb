# @param {String[]} words
# @return {String}
def longest_word(words)
    words.sort!
    hash = {}
    words.each do |word|
        if word.length == 1
            hash[word] = true
        elsif hash[word[0..-2]] == true
            hash[word] = true
        end
    end
    hash.keys.max_by(&:length) || ""
end