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
def max_level_sum(root)
    queue = [root]
    max_sum = -Float::INFINITY
    max_level = 0
    level = 0

    while !queue.empty?
        queue_size = queue.size
        sum = 0
        level += 1

        queue_size.times do |i|
            node = queue.shift
            sum += node.val
            
            queue << node.left if node.left
            queue << node.right if node.right

            if sum > max_sum && i == queue_size - 1 # only check at last item
                max_sum = sum
                max_level = level
            end
        end
    end

    max_level
end