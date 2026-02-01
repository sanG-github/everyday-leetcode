# @param {Integer[]} prices
# @return {Integer}
def get_descent_periods(prices)
    arr = []
    descent_arr = []
    total = prices.size

    prices.each_index do |i|
        last_item = descent_arr[-1]

        puts "#{last_item}, #{descent_arr.size}"

        if last_item.nil? || prices[i] == last_item - 1
            descent_arr << prices[i]
        elsif descent_arr.size > 1
            arr << descent_arr
            descent_arr = [prices[i]]
        else
            descent_arr = [prices[i]]
        end
    end

    arr << descent_arr if descent_arr.size > 1

    arr.each do |descent_arr|
        count = descent_arr.size

        puts "adding: count: #{count}, from: #{descent_arr[0]}, to: #{descent_arr[-1]}"

        total += count * (count - 1) / 2
    end

    total
end
