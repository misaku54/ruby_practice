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
kinmu_ary = tmp_ary.uniq.sort
p kinmu_ary


mae_ar = 0
kinmu_count = 0
max_kinmu_ary = []


kinmu_ary.each.with_index(0) do |ar, index|
  if index == 0
    kinmu_count += 1
    next
  end

  # 順番に増えていれば勤務カウントを＋１
  if ar == mae_ar + 1
    kinmu_count += 1
    next
  # そうでなければ、勤務カウントを配列に格納し、リセットする。
  else
    max_kinmu_ary << kinmu_count
    kinmu_count = 0
  end
  ar

  mae_ar = ar
end