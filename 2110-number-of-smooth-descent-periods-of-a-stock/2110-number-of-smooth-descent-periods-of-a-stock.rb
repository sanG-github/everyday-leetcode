# @param {Integer[]} prices
# @return {Integer}
def get_descent_periods(prices)
    count = 1
    total = prices.size

    1.upto(prices.size - 1) do |i|
        if prices[i] == prices[i-1] - 1
            count += 1
        else
            total += count * (count - 1) / 2

            count = 1 # Reset, that number is the first element
        end
    end

    total += count * (count - 1) / 2 # Accumulate last chain
end
