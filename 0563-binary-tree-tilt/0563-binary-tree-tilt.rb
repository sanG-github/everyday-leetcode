def find_tilt(root)
  @total_tilt = 0
  dfs(root)
  @total_tilt
end

def dfs(node)
  return 0 if node.nil?

  left_sum = dfs(node.left)
  right_sum = dfs(node.right)

  @total_tilt += (left_sum - right_sum).abs

  left_sum + right_sum + node.val
end
