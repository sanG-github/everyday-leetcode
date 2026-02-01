# def next_greatest_letter(letters, target)
#   l = 0
#   r = letters.size

#   while l < r
#     m = (l + r) / 2
#     puts "l=#{l}, m=#{m}, r=#{r}"

#     if letters[m] <= target
#       l = m + 1
#     else
#       r = m
#     end
#   end

#   # wrap-around
#   letters[l % letters.size]
# end

def next_greatest_letter(letters, target)
    letters.each do |letter|
        return letter if letter > target
    end

    letters[0]
end