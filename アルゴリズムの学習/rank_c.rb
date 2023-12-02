h,w,n = gets.chomp.split.map(&:to_i)
banmen_ary = []
out_ary = []

# 盤面格納
h.times do
  tmp = gets.chomp.split('')
  raise if tmp.size > w
  banmen_ary << tmp
end

n.times do
  y,x= gets.chomp.split.map(&:to_i)
  out_ary << banmen_ary[y][x]
end

out_ary.each do |ar|
  puts ar
end

# h, w, n = gets.split.map(&:to_i)
# board = h.times.map { gets.chomp }

# n.times do
#   y, x = gets.split.map(&:to_i)

#   puts board[y][x]
# end