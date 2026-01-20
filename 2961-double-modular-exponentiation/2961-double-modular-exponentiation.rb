# @param {Integer[][]} variables
# @param {Integer} target
# @return {Integer[]}
def get_good_indices(variables, target)
    res = []
    
    variables.each_with_index do |(a,b,c,m), index|
        res << index if mod_pow(mod_pow(a, b, 10), c, m) == target
    end

    res
end

def mod_pow(a, b, mod)
  result = 1
  a %= mod

  while b > 0
    result = (result * a) % mod if b.odd?
    a = (a * a) % mod
    b >>= 1
  end

  result
end
