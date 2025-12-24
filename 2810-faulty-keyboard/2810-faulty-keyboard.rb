# @param {String} s
# @return {String}
def final_string(s)
    faulty_character = 'i'
    index = 0 
    ret = ''

    while index < s.length
        next index += 2 if s[index] == faulty_character && s[index+1] == faulty_character

        s[index] == faulty_character ? ret.reverse! : ret << s[index]

        index += 1
    end

    ret
end