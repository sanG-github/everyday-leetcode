# @param {String} s
# @param {String} t
# @param {Integer} k
# @return {Boolean}
def is_possible_to_rearrange(s, t, k)
    chunk_size = s.length / k
    s_chunks = Hash.new(0)

    split_s = s.chars.each_slice(chunk_size) do |chunk|
        s_chunks[chunk] += 1
    end

    split_t = t.chars.each_slice(chunk_size) do |chunk|
        return false if s_chunks[chunk] <= 0

        s_chunks[chunk] -= 1
    end

    true
end