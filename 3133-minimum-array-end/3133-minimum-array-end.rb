# @param {Integer} n
# @param {Integer} x
# @return {Integer}
# def min_end(n, x)
#   # Ta cần phần tử thứ (n-1) trong dãy, vì:
#   # a[0] = x  → tổ hợp đầu tiên tương ứng k = 0
#   # a[1]      → k = 1
#   # ...
#   # a[n-1]    → k = n-1
#   k = n - 1 # the result

#   # Con trỏ duyệt từng bit của x (từ bit thấp nhất)
#   bit = 0

#   # Khi nào k > 0 thì vẫn còn bit cần "đổ" vào các vị trí 0 của x
#   while k > 0

#     # Kiểm tra bit hiện tại của x:
#     # (x >> bit) & 1 == 0  ⇔  bit cuối này của x là 0
#     # → đây là vị trí ta ĐƯỢC phép gán
#     if ((x >> bit) & 1) == 0

#       # Lấy bit thấp nhất của k
#       # Nếu k & 1 == 1 → bật bit này trong x thành 1
#       if (k & 1) == 1
#         x |= (1 << bit)
#       end

#       # Đã dùng xong 1 bit của k
#       # → dịch phải để chuẩn bị bit tiếp theo
#       k >>= 1
#     end

#     # Dù bit của x là 0 hay 1 thì cũng tiến lên bit tiếp theo
#     bit += 1
#   end

#   # Khi k == 0:
#   # - đã gán hết các bit cần thiết
#   # - x lúc này chính là a[n-1] nhỏ nhất thỏa điều kiện
#   x
# end

def min_end(n, x)
    # n = 9, x = 21 = 10101
    # as x is result of AND operations, x should be the smallest (1 AND 0 = 0) -> able to toggle 0 bits only
    # we can toggle from right to left (n - 1) times -> n -1 will be the result after assiging this to 0 bits
    # k = n - 1 = 5 = 1001 

    k = n - 1
    checking_bit = 0 # the order of bit is checking, from R to L

    while k > 0 # not 00000
        # find the first 0 bit from R to L
        if (x >> checking_bit) & 1 == 0 # move (checking_bit) bits
            # we can replace LSB by the last bit of k, if after moving, LSB is 0 (only 0 bit can be replaced)
            x |= (k & 1) << checking_bit # OR

            k = k >> 1 # move to the next checking bit after replacing
        end

        checking_bit += 1 # move to the next bit to check after each iteration
    end

    x
end