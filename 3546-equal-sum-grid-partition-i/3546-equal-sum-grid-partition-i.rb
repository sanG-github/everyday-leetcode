# @param {Integer[][]} grid
# @return {Boolean}
def can_partition_grid(grid)
  total = grid.sum { |r| r.sum }
  return false if total.odd?
  target = total / 2

  running = 0
  grid[0...-1].each do |row|
    running += row.sum
    return true if running == target
    break if running > target
  end

  running = 0
  (0...grid[0].size - 1).each do |j|
    running += grid.sum { |row| row[j] }
    return true if running == target
    break if running > target
  end

  false
end
