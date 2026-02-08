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
def is_balanced(root)
    height(root) != -1
end

def height(root)
    return 0 unless root

    left = height(root.left)

    return -1 if left == -1

    right = height(root.right)

    return -1 if right == -1

    return -1 if (left - right).abs > 1

    [left, right].max + 1
end