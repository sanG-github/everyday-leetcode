# @param {Integer[]} bloom_day
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def min_days(bloom_day, m, k)
    return -1 if m * k > bloom_day.size

    left = bloom_day.min
    right = bloom_day.max

    while left < right
        mid = (left + right) / 2
        bouquets = 0
        consecutive = 0

        bloom_day.each do |day|
            if day <= mid
                consecutive += 1
            else 
                consecutive = 0
            end

            if consecutive == k
                bouquets += 1
                consecutive = 0
            end
        end

        if bouquets >= m
            right = mid
        else 
            left = mid + 1
        end
    end

    left
end