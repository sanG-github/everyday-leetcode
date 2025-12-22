# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    compiled_s = compile_string(s)
    compiled_t = compile_string(t)

    compiled_s == compiled_t
end

def compile_string(s)
    chars = s.chars
    ret = []
    backspace = '#'

    while chars.any?
        char = chars.shift

        next if char == backspace && ret.empty?
        
        char == backspace ? ret.pop : ret << char
    end 

    ret.join
end