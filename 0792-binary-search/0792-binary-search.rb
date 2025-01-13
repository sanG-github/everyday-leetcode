# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    start , last = 0 , nums.length() - 1
    while start <= last
        mid = (start + last)/2
        if target === nums[mid]
            return mid
        elsif target < nums[mid]
            last = mid - 1
        else 
            start = mid + 1
        end
    end
    
    -1
end