# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    @res = []
    @digits = digits.chars
    @chars = {
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz"
    }

    backtracking(0, "")

    @res
end

def backtracking(letter_index, currentString)
    if currentString.length == @digits.length
        @res << currentString
        return
    end

    digit = @digits[letter_index]
    letters = @chars[digit.to_sym]

    letters.each_char do |letter|
        backtracking(letter_index + 1, currentString + letter)
    end
end