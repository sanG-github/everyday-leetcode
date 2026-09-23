# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
    n = column_title.size

    column_title.chars.reduce(0) do |acc, char|
        acc * 26 + value_for(char)
    end
end

def value_for(char)
    char.ord - 'A'.ord + 1
end