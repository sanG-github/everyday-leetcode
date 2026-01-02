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
# @return {Integer[]}
def find_frequent_tree_sum(root)
    @sums = Hash.new(0)

    dfs(root)

    max = @sums.values.max
    @sums.select { |_, v| v == max }.keys
end

def dfs(node)
    return 0 if node.nil?

    val = node.val + dfs(node.left) + dfs(node.right)

    @sums[val] += 1

    val
end