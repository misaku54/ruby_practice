strs = gets.split(' ')
t, n = strs[0].to_i, strs[1].to_i

m = Array.new(n)

n.times do |i|
  m[i] = gets.to_i
end

ans = m.slice(0,t).inject(:+)
tmp = ans
(n-t).times do |i|
  tmp += m[t+i]
  tmp -= m[i]
  if ans < tmp
    ans = tmp
  end
end

puts ans
