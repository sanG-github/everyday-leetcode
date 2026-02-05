# @param {Integer[]} nums
# @return {Integer}
def triangular_sum(nums)
  while nums.size > 1
    next_nums = []
    (0...nums.size - 1).each do |i|
      next_nums << (nums[i] + nums[i + 1]) % 10
    end
    nums = next_nums
  end
  nums[0]
end

# def triangular_sum(nums)
#     sum = 0
#     n = nums.size

#     nums.each_index { |i| sum = (sum + nCr(n - 1, i) * nums[i]) % 10 }

#     sum
# end

# def nCr(n, r)
#   return 1 if r == 0

#   ((n - r + 1)..n).inject(:*) / (1..r).inject(:*)
# end


# def pattern_for(n)
#     return [1] if n == 1
    
#     arr = [1, 1]
#     tmp = []

#     (n-2).times do |time|
#         tmp << arr[0]

#         0.upto(arr.size - 2) do |i|
#             tmp << arr[i] + arr[i+1]
#         end

#         tmp << arr[-1]
#         arr = tmp
#         tmp = []
#     end

#     puts arr 

#     arr
# end