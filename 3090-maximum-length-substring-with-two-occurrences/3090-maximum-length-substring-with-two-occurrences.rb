# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
  freq = Hash.new(0)
  left = 0
  max_len = 0

  s.each_char.with_index do |ch, right|
    freq[ch] += 1

    # shrink window if a character appears more than twice
    while freq[ch] > 2
      freq[s[left]] -= 1
      left += 1
    end

    max_len = [max_len, right - left + 1].max
  end

  max_len
end
