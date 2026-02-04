# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
    return unless head 

    runner = head
    count = 1

    while runner.next
        runner = runner.next
        count += 1
    end

    tail = runner
    runner = head
    k = k % count

    return head if k == 0

    while count - k - 1 > 0
        runner = runner.next
        count -= 1
    end

    new_head = runner.next
    runner.next = nil
    tail.next = head

    new_head
end