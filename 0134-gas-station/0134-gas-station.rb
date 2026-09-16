# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
    total = 0
    tank = 0 
    start = 0

    (0...(gas.length)).each do |i|
        diff = gas[i] - cost[i]

        total += diff
        tank += diff

        # ineligible to go to next station
        if tank < 0
            start = i + 1
            tank = 0
        end
    end

    total >= 0 ? start : -1
end