# @param {Integer} n
# @return {Integer}
def num_trees(n)
    @hash = {}
    # n = 1 -> 1

    # n = 2 -> 2
    # 1 - 2
    # 2 - 1

    # n = 3 -> 5
    # pick 1 ([],[2,3]) -> (2)
    # pick 2 ([1],[3]) -> (1)
    # pick 3 ([1,2],[]) -> (2)

    # n = 4 -> 14
    # pick 1 ([],[2,3,4]) -> 5
    # pick 2 ([1],[3,4]) -> 2
    # pick 3 ([1,2],[4]) -> 2
    # pick 4 ([1,2,3],[]) -> 5

    # n = 5 ->
    # pick 1 ([], [2,3,4,5]) -> 14
    # pick 2 ([1], [3,4,5]) -> 5
    # pick 3 ([1,2], [4,5]) -> 4
    # pick 4 ([1,2,3], [5]) -> 5
    # pick 5 ([1,2,3,4], []) -> 14

    recursive(n)
end

def recursive(n)
    return 1 if n == 0
    return 1 if n == 1

    return @hash[n] if @hash[n]

    @hash[n] = n.times.reduce(0) do |acc, i|
        left = i
        right = n - (i+1)

        acc + recursive(left) * recursive(right)
    end
end