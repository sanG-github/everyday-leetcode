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
# @return {Boolean}
UNBALANCED = -1

def is_balanced(root)
    height(root) != UNBALANCED
end

def height(root)
    return 0 unless root

    left = height(root.left)

    return UNBALANCED if left == UNBALANCED

    right = height(root.right)

    return UNBALANCED if right == UNBALANCED

    return UNBALANCED if (left - right).abs > 1

    [left, right].max + 1
end