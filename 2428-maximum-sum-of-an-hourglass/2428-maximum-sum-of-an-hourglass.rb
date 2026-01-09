# @param {Integer[][]} grid
# @return {Integer}
def max_sum(grid)
  hourglass_m = grid.length - 2
  hourglass_n = grid[0].length - 2

  max = -Float::INFINITY

  0.upto(hourglass_m - 1).each do |i|
    0.upto(hourglass_n - 1).each do |j|
      max = [max, hourglass_sum_for(grid, i, j)].max
    end
  end

  max
end

def hourglass_sum_for(grid, i, j)
  [
    grid[i][j], grid[i][j+1], grid[i][j+2],
    grid[i+1][j+1],
    grid[i+2][j], grid[i+2][j+1], grid[i+2][j+2]
  ].sum
end
