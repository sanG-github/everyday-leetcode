# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer[][]}
def get_ancestors(n, edges)
    children = Array.new(n) {[]}
    ancestors = Array.new(n) {Set.new}
    indegree = Array.new(n, 0)

    edges.each do |from, to|
        children[from] << to
        indegree[to] += 1
    end

    # We have ancestors of each node as of now
    # Indegree represents the number of parent nodes lead to that node

    # Process the non-indegree node, to make sure all parents have been processed
    queue = indegree.each_index.select { |index| indegree[index] == 0 }

    while !queue.empty?
        from = queue.shift

        to_nodes = children[from]

        to_nodes.each do |node|
            ancestors[node] << from # add from as ancestor
            ancestors[node].merge(ancestors[from]) # append ancestors of ancestor

            indegree[node] -= 1 # mark as processed with from (checking) node

            queue << node if indegree[node] == 0 # non-indegree node
        end
    end

    puts ancestors

    ancestors.map { |s| s.to_a.sort }
end