# @param {Integer[][]} matrix
# @return {Integer}
def max_matrix_sum(matrix)
    min_item = Float::INFINITY
    num_of_negative_items = 0
    sum = 0

    matrix.each_index do |i|
        matrix[i].each_index do |j|
            item = matrix[i][j]
            min_item = [min_item, item.abs].min
            sum += item.abs

            num_of_negative_items += 1 if item <= 0
        end
    end

    puts "min_item: #{min_item}, num_of_negative_items: #{num_of_negative_items}"

    num_of_negative_items.even? ? sum : sum - 2 * min_item

    # flat_matrix = matrix.flatten
    # positive_matrix = flat_matrix.map { _1.abs }
    # negative = flat_matrix.select { _1 <= 0 }

    # negative_item = negative.size.even? ? 0 : positive_matrix.sort[0]

    # positive_matrix.sum - 2 * negative_item
end