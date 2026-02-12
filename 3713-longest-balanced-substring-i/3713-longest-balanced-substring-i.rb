def longest_balanced(s)
    n = s.length
    max_len = 0

    (0...n).each do |i|
        freq = Array.new(26, 0)
        distinct = 0
        max_freq = 0

        (i...n).each do |j|
            idx = s[j].ord - 'a'.ord
            freq[idx] += 1

            distinct += 1 if freq[idx] == 1
            max_freq = [max_freq, freq[idx]].max

            length = j - i + 1
            max_len = [max_len, length].max if length == distinct * max_freq
        end
    end

    max_len
end
