# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_product(root)
    @sums = []
    max = 0

    total = sum_of(root)

    @sums.each { |sum| max = [max, sum * (total - sum)].max }

    max % (10 ** 9 + 7)
end

def sum_of(root)
    return 0 unless root

    value = root.val + sum_of(root.left) + sum_of(root.right)

    @sums << value

    value
end