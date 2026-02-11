# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
    arr.sort!

    min_diff = Float::INFINITY
    min_arr = []

    1.upto(arr.size - 1) do |i|
        diff = arr[i] - arr[i-1]

        if diff == min_diff
            min_arr << [arr[i-1], arr[i]]
        elsif diff < min_diff
            min_arr = [[arr[i-1], arr[i]]]
            min_diff = diff
        end
    end

    min_arr
end