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
# @return {TreeNode}
def balance_bst(root)
    @tree = []

    store_inorder(root)

    build_balanced_tree(0, @tree.size - 1)
end

def store_inorder(root)
    return unless root

    store_inorder(root.left)
    @tree << root
    store_inorder(root.right)
end

def build_balanced_tree(head, tail)
    return unless head <= tail

    mid = (head + tail) / 2
    root = @tree[mid]

    puts "mid: #{mid}, head: #{head}, tail: #{tail}"

    root.left = build_balanced_tree(head, mid - 1)
    root.right = build_balanced_tree(mid + 1, tail)

    root
end