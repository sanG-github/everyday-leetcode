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
# @return {Float[]}
def group_values_by_level(hash, root, level)
    return unless root

    hash[level] ||= []
    hash[level] << root.val

    group_values_by_level(hash, root.left, level + 1)
    group_values_by_level(hash, root.right, level + 1)
end

def average_of_levels(root)
    hash = {}
    arr = []
    group_values_by_level(hash, root, 0)

    hash.each do |_level, values|
        arr << (values.sum.to_f / values.size).round(5)
    end

    arr
end