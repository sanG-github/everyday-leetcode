# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_distance(nums1, nums2)
    i = 0
    j = 0
    max = 0

    while i < nums1.size && j < nums2.size
        if nums1[i] <= nums2[j]
            max = [j - i, max].max
            j += 1 # larger number of nums2
        else
            i += 1 # smaller number of nums1
        end
    end

    max
end