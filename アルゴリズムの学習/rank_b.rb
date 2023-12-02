# N = gets.chomp.to_i

# ary = Array.new
# ary = gets.chomp.split.map(&:to_i)

# n = gets.chomp.to_i

# tmp_ary = Array.new
# n.times do  
#   tmp_ary << gets.chomp.split.map(&:to_i)
# end

# tmp_ary.each do |ar|
#   puts ary[ar[0]..ar[1]].sum
# end


n = gets.to_i
a = gets.split.map(&:to_i)

x = 0
sum = Array.new(n)
n.times do |i|
  x += a[i]
  sum[i] = x
end

q = gets.to_i
q.times do
  l, u = gets.split.map(&:to_i)
  puts sum[u] - sum[l] + a[l]
end