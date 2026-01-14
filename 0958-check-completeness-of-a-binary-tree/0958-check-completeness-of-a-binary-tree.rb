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
def is_complete_tree(root)
    queue = [root]
    seen_null = false # If we've seen a null, all later nodes should be null too

    while !queue.empty? do
        size = queue.size

        size.times.each do |i|
            node = queue.shift

            if node.nil?
                seen_null = true
            else
                return false if seen_null

                queue << node.left
                queue << node.right
            end
        end
    end

    true
end