# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return unless head
    return head unless head.next

    # old_head = head
    # head = head.next
    # rev_head = nil

    # while head do
    #     rev_head = head
    #     head = rev_head.next

    #     rev_head.next = old_head

    #     old_head = rev_head
    # end

    arr = []

    while head do
        arr.unshift head.val

        head = head.next
    end

    arr
end
