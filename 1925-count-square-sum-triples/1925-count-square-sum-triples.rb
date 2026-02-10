# @param {Integer} n
# @return {Integer}
def count_triples(n)
    arr = Set.new

    1.upto(n) do |i|
        (i + 1).upto(Integer.sqrt(n * n - i * i)) do |j|
            total = i * i + j * j

            arr << [i, j, Integer.sqrt(total)] if Integer.sqrt(total) == Math.sqrt(total) 
        end
    end

    puts arr

    arr.size * 2
end