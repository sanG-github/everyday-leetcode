# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
    hash = Hash.new(0)

    arr.each { |item| hash[item] += 1 }

    arr.each do |item|
        k -= 1 if hash[item] == 1

        return item if k == 0
    end

    return ""
end