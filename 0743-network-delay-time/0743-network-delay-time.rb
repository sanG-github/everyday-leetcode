# @param {Integer[][]} times
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def network_delay_time(times, n, k)
    graph = Hash.new { |h, k| h[k] = {} }
    
    times.each do |u, v, w|
        graph[u][v] = [graph[u][v] || w, w].min
    end

    min_costs = dijkstra(graph, k)

    return -1 if min_costs.keys.size != n

    min_cost = min_costs.sort_by { |k, v| -v }.first[1]

    min_cost == Float::INFINITY ? - 1 : min_cost
end

# Define a graph using an adjacency list
# graph = {
#   'A' => { 'B' => 1, 'C' => 4 },
#   'B' => { 'A' => 1, 'C' => 2, 'D' => 5 },
#   'C' => { 'A' => 4, 'B' => 2, 'D' => 1 },
#   'D' => { 'B' => 5, 'C' => 1 }
# }

def dijkstra(graph, start)
    distances = {} # distances from start to other nodes
    distances[start] = 0 # distance from start to start is always 0 (shortest)
    nodes = graph.keys
    visited = []

    while visited.size != nodes.size # traverse all nodes
        not_visited = nodes - visited # only check the not-visited nodes
        shortest_node = not_visited.min_by {|node| distances[node] || Float::INFINITY } # get the not-visited node with shortest path 

        adjacent_nodes = graph[shortest_node]

        break if distances[shortest_node].nil? # this node is unreachable (no path)

        adjacent_nodes.each do |node, distance|
            accumulated_distance = distances[shortest_node] + distance

            distances[node] = distances[node] ? [accumulated_distance, distances[node]].min : accumulated_distance
        end

        visited << shortest_node
    end

    distances
end