# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
    new_grid = grid.flatten
    size = grid[0].length
    n = new_grid.length

    shift = k % n

    return grid if shift == 0

    new_grid = new_grid[(n-shift)..-1] + new_grid[...(n-shift)]

    new_grid.each_slice(size).to_a
end