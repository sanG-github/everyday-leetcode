# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
    queue = []
    result = nil
    operands = ["+", "-", "*", "/"]

    tokens.each do |token|
        if operands.include?(token)
            right = queue.pop
            left = queue.pop

            result = left + right if token == '+'
            result = left - right if token == '-'
            result = left * right if token == '*'
            result = left / right.to_f if token == '/'

            queue << result.to_i
        else
            queue << token.to_i
        end
    end

    queue.pop
end