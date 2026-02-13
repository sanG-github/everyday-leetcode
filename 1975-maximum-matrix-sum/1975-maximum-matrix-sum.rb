# @param {Integer[][]} matrix
# @return {Integer}
def max_matrix_sum(matrix)
    flat_matrix = matrix.flatten
    positive_matrix = flat_matrix.map { _1.abs }
    negative = flat_matrix.select { _1 <= 0 }

    negative_item = negative.size.even? ? 0 : positive_matrix.sort[0]

    puts "negative_item: #{negative_item}"

    positive_matrix.sum - 2 * negative_item
end