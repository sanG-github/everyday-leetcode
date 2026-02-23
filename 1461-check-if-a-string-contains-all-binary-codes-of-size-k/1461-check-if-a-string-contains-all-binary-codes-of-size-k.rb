# @param {String} s
# @param {Integer} k
# @return {Boolean}
def has_all_codes(s, k)
    hash = {}

    s.chars.each_cons(k) do |sub|
        str = sub.join

        hash[str] = true
    end

    hash.size == 2 ** k
end