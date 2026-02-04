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
    k %= count

    return head if k == 0

    # find new tail
    runner = head
    steps = count - k - 1
    steps.times { runner = runner.next }

    new_head = runner.next
    runner.next = nil
    tail.next = head

    new_head
end