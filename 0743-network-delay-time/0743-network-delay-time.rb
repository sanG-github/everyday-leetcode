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
    distances = {}
    visited = []
    nodes = graph.keys

    distances[start] = 0

    until nodes.empty?
        not_visited_nodes = nodes - visited
        min_node = not_visited_nodes.min_by { |node| distances[node] || Float::INFINITY }

        puts "not_visited_nodes: #{not_visited_nodes}, #{distances}"

        break unless distances[min_node]

        graph[min_node].each do |neighbor, value|
            alt = distances[min_node] + value
            distances[neighbor] = alt if !distances[neighbor] || alt < distances[neighbor]
        end

        visited << min_node
        nodes.delete(min_node)
    end

    distances
end