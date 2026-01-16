# @param {String} s
# @param {Integer[][]} queries
# @return {Integer[][]}
def substring_xor_queries(s, queries)
    # 0 <= firsti, secondi <= 109 -> max 30 binary character
    # Precompute all possible values, instead of finding them later

    n = s.length
    position = {}

    0.upto(n - 1) do |i|
        if s[i] == '0'
            position[0] ||= [i, i]
            next
        end

        val = 0
        i.upto([i + 30, n - 1].min) do |j|
            val = (val << 1) | (s[j] == '1' ? 1 : 0)
            position[val] ||= [i, j]   # keep earliest occurrence
        end
    end


    # a XOR b = c -> a = b XOR c
    queries.map do |b, c| 
        a_decimal = (b ^ c)

        position[a_decimal] || [-1, -1]
    end
end