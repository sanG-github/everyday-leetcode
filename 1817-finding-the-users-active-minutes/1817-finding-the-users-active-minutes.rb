require 'set'

# @param {Integer[][]} logs
# @param {Integer} k
# @return {Integer[]}
def finding_users_active_minutes(logs, k)
  frequency = Hash.new { |h, key| h[key] = Set.new }
  ret = Array.new(k, 0)

  logs.each do |user_id, minute|
    frequency[user_id].add(minute)
  end

  frequency.each_value do |minutes|
    ret[minutes.size - 1] += 1
  end

  ret
end
