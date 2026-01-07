# @param {Integer[]} nums
# @return {Boolean}
class Integer < Numeric
    def is_prime?
        return true if self == 0
        return false if self <= 1
        2.upto(Math.sqrt(self).to_i) do |x|
            return false if self%x == 0
        end 
        true
    end

    def previous_prime
        n = self - 1
        
        return 0 if n <= 0

        n = n - 1 until n.is_prime?

        n
    end
end

def prime_sub_operation(nums)
  prev = 0

  nums.each do |num|
    prime = (num - prev).previous_prime

    puts "checking prime: #{prime}, num: #{num}, prev: #{prev}"
    return false if num - prime <= prev

    prev = num - prime
  end

  true
end
