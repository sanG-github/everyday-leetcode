# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
    n = code.length
    return [0] * n if k == 0

    result = Array.new(n, 0)

    if k > 0
        # Initial window: next k elements of index 0
        window_sum = 0
        (1..k).each do |i|
            window_sum += code[i % n]
        end

        result[0] = window_sum

        (1...n).each do |i|
            # remove element leaving the window
            window_sum -= code[i % n]

            # add new element entering the window
            window_sum += code[(i + k) % n]

            result[i] = window_sum
        end
    else
        k = -k

        # Initial window: previous k elements of index 0
        window_sum = 0
        (1..k).each do |i|
            window_sum += code[-i % n]
        end

        result[0] = window_sum

        (1...n).each do |i|
            # add new element entering from the right
            window_sum += code[(i - 1) % n]

            # remove element leaving from the left
            window_sum -= code[(i - k - 1) % n]

            result[i] = window_sum
        end
    end

    result
end