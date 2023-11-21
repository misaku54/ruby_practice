h,w,n = gets.chomp.split.map(&:to_i)
banmen_ary = []

# 盤面格納
h.times do
  tmp = gets.chomp.split('')
  raise if tmp.size > n 
  banmen_ary << tmp
end

