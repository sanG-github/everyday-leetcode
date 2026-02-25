# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    hash = Hash.new { |h, k| h[k] = [] }
    result = []

    arr.each do |num|
        num_of_1 = num.to_s(2).count('1')
        puts "Adding #{num} to #{num_of_1}, #{hash}"
        hash[num_of_1] << num
    end

    hash.keys.sort.each do |key|
        result += hash[key].sort
    end

    result
end