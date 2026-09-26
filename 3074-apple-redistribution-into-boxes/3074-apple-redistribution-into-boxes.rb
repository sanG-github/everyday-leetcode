# @param {Integer[]} apple
# @param {Integer[]} capacity
# @return {Integer}
def minimum_boxes(apple, capacity)
    left = apple.sum
    capacity = capacity.sort.reverse

    capacity.each_with_index do |cap, i|
        left -= cap

        return i + 1 if left <= 0
    end
end