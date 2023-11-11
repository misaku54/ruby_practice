n = gets.to_i
a = gets.split.map(&:to_i)

x = 0
sum = Array.new(n)
n.times do |i|
  x += a[i]
  sum[i] = x
end
p sum
q = gets.to_i
q.times do
  l, u = gets.split.map(&:to_i)
  puts sum[u] - sum[l] + a[l]
end