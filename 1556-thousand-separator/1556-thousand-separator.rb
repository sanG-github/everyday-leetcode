# @param {Integer} n
# @return {String}
def thousand_separator(n)
    res = []

    return "0" if n == 0

    while n > 0 do
        if n / 1000 == 0
            res << n % 1000
        else
            res << (n % 1000).to_s.rjust(3, '0')
        end

        n /= 1000
    end
    
    res.reverse.join(".")
end