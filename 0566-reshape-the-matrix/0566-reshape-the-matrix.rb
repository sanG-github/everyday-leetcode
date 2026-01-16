# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
    original_r = mat.size
    original_c = mat[0].size

    return mat if original_r * original_c != r * c

    new_mat = []

    mat.flatten.each_slice(c) do |row|
        new_mat << row
    end
    
    new_mat
end