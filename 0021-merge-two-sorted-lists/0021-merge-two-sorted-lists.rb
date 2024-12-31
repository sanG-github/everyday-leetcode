# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    return list2 unless list1
    return list1 unless list2

    dummy = ListNode.new(0)
    current = dummy
    
    # Merge while both lists have nodes
    while list1 && list2
        if list1.val <= list2.val
            current.next = list1
            list1 = list1.next
        else
            current.next = list2
            list2 = list2.next
        end
        current = current.next
    end
    
    # Attach remaining nodes from either list
    current.next = list1 || list2
    
    # Return the merged list (excluding dummy head)
    dummy.next
end