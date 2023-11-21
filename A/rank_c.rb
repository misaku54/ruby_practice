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