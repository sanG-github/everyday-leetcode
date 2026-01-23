# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
    is_upcase = word[0] == word[0].upcase

    if is_upcase && word[1]
        is_upcase = word[1] == word[1].upcase
    end
    
    word.chars[1..-1].each do |char|
        return false if (is_upcase && char != char.upcase) || (!is_upcase && char == char.upcase)
    end

    true
end