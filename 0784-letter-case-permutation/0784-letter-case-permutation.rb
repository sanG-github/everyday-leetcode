# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
    @chars = s.chars
    @res = []

    backtracking(0, "")

    @res
end

def backtracking(index, currentString)
    if currentString.length == @chars.length
        @res << currentString
        return
    end

    if @chars[index].match? /[A-Za-z]/
        backtracking(index + 1, currentString + @chars[index].downcase)
        backtracking(index + 1, currentString + @chars[index].upcase)
    else
        backtracking(index + 1, currentString + @chars[index])
    end
end