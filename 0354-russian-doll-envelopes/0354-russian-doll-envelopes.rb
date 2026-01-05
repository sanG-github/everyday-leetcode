# @param {Integer[][]} envelopes
# @return {Integer}
def max_envelopes(envelopes)
  return 0 if envelopes.empty?

  # sort width ↑, height ↓
  envelopes.sort_by! { |w, h| [w, -h] }

  dp = []

  # longest increasing subsequence
  envelopes.each do |_, h|
    # binary search vị trí thay thế
    idx = dp.bsearch_index { |x| x >= h } || dp.length
    dp[idx] = h
  end

  dp.length
end
