N = gets.chomp.to_i

ary = Array.new
ary = gets.chomp.split.map(&:to_i)

n = gets.chomp.to_i

tmp_ary = Array.new
n.times do  
  tmp_ary << gets.chomp.split.map(&:to_i)
end

tmp_ary.each do |ar|
  puts ary[ar[0]..ar[1]].sum
end


# 素直に区間の始まりと終わりを全探索して実装すると、計算量が O(N^2) となってしまい実行時間制限に間に合いません。
# そこで、前回の問題で求めた累積和S_iを用います。
# A[l]+...+A[u] = (A[0]+...A[u]) - (A[0]+...A[l-1]) = S[u+1]-S[l]
# の関係より、累積和 S を前もって計算しておけば、回答例の通り、区間 l,u の和を O(1) で求めることができるので
# 全体の計算量を O(N) にできます。

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