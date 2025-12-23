# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  target = graph.length - 1
  res = []

  dfs(graph, 0, target, [0], res)
  res
end

def dfs(graph, node, target, path, res)
  if node == target
    res << path
    return
  end

  graph[node].each do |next_node|
    dfs(graph, next_node, target, path + [next_node], res)
  end
end
