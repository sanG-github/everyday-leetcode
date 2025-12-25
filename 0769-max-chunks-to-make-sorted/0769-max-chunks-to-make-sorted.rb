# @param {Integer[]} arr
# @return {Integer}
def max_chunks_to_sorted(arr)
    max_so_far = -1
    chunk = 0

    arr.each_with_index do |item, index|
        max_so_far = [max_so_far, item].max

        if max_so_far == index
            chunk += 1
            max_so_far = -1
        end
    end

    chunk
end