# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
    queue = []
    result = nil
    operands = ["+", "-", "*", "/"]

    tokens.each do |token|
        if operands.include?(token)
            right = queue.pop.to_f
            left = queue.pop.to_f

            puts "Doing: #{left} #{token} #{right}"

            result = left + right if token == '+'
            result = left - right if token == '-'
            result = left * right if token == '*'
            result = left / right if token == '/'

            queue << result.to_i
        else
            queue << token.to_i
        end
    end

    queue.pop
end