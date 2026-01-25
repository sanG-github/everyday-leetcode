# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
    hash = Hash.new(0)

    arr.each { |item| hash[item] += 1 }

    hash.to_a.each do |item, count|
        k -= 1 if count == 1

        return item if k == 0
    end

    return ""
end