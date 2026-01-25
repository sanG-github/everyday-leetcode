# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def postorder(root)
    return [] unless root

    @arr = []

    dfs(root)

    @arr
end

def dfs(root)
    return @arr << root.val if root.children.empty?

    root.children.each do |child|
        dfs(child)
    end

    @arr << root.val
end