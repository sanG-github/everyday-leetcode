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
def preorder(root)
    @arr = []
    
    dfs(root)

    @arr
end

def dfs(root)
    return unless root 
    
    @arr << root.val

    root.children.each do |child|
        dfs(child)
    end
end
