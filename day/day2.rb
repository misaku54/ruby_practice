# 二次元配列で管理する。
# ary = [[1,2],[2,3],[5,7],[8,15]]
tmp_ary = []
n = gets.chomp.to_i

n.times do
  tmp =  gets.chomp.split.map(&:to_i)
  raise if tmp[0] > tmp[1]
  (tmp[0]..tmp[1]).each {|a| tmp_ary << a}
end

p tmp_ary
kinmu_ary = tmp_ary.uniq
p kinmu_ary