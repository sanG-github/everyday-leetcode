# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    return true if !p && !q

    queue = [[p, q]]

    while !queue.empty?
        size = queue.size

        size.times do |index|
            n1, n2 = queue.pop

            return false unless n1&.val == n2&.val
            
            queue << [n1.left, n2.left] if n1.left || n2.left
            queue << [n1.right, n2.right] if n1.right || n2.right
        end
    end

    true
end