# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  rows = grid.length
  cols = grid[0].length

  queue = []
  fresh = 0

  (0...rows).each do |r|
    (0...cols).each do |c|
      if grid[r][c] == 2
        queue << [r, c]
      elsif grid[r][c] == 1
        fresh += 1
      end
    end
  end

  return 0 if fresh == 0

  minutes = 0
  directions = [[1,0], [-1,0], [0,1], [0,-1]]


  while !queue.empty? && fresh > 0
    queue_size = queue.size

    queue_size.times do |i|
      r, c = queue.shift

      directions.each do |dr, dc|
        nr = r + dr
        nc = c + dc

        if nr.between?(0, rows - 1) &&
           nc.between?(0, cols - 1) &&
           grid[nr][nc] == 1

          # Mark the fresh as rotten
          grid[nr][nc] = 2
          fresh -= 1

          # Add to the next layer for processing
          queue << [nr, nc]
        end
      end
    end

    # End of one layer
    minutes += 1
  end

  fresh > 0 ? -1 : minutes
end