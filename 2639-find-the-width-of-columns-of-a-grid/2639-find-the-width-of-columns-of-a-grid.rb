# @param {Integer[][]} grid
# @return {Integer[]}
def find_column_width(grid)
    ans = []

    grid.each do |row|
        row.each_with_index do |col, i|
            length = col.to_s.length

            ans[i] = [length, ans[i] || 0].max
        end
    end

    ans
end