def max(a,b)
  a > b ? a : b
end

def min(a,b)
  a < b ? a : b
end

# 分割代入
n, m = gets.chomp.split.map(&:to_i)
s = gets.chomp

s_g = s.count("G")
s_c = s.count("C")
s_p = s.count("P")

win_max = 0
