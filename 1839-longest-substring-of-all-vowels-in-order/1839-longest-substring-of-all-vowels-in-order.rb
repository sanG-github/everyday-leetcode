# @param {String} word
# @return {Integer}
def longest_beautiful_substring(word)
    max_length = 0
    length = 1
    vowels = 1

    (1...word.length).each do |i|

        if word[i] > word[i - 1] # moving to next vowels
            vowels += 1
            length += 1
        elsif word[i] == word[i - 1] # same vowel
            length += 1
        else # end of chain, word[i] < word[i - 1]
            length = 1
            vowels = 1
        end

        max_length = [max_length, length].max if vowels == 5 
    end

    max_length
end