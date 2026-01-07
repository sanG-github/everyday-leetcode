require 'prime'

def prime_sub_operation(nums)
  prev = 0

  nums.each do |num|
    best = num

    Prime.each(num - 1) do |p|
      break if num <= p
      
      val = num - p

      best = [best, val].min if val > prev
    end

    return false if best <= prev
    prev = best
  end

  true
end
