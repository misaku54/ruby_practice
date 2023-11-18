# 二次元配列で管理する。
# ary = [[1,2],[2,3],[5,7],[8,15]]
tmp_ary = []
n = gets.chomp.to_i

n.times do
  x,y =  gets.chomp.split.map(&:to_i)
  # raise if tmp[0] > tmp[1]
  ary = [*x..y]
  ary.each {|a| tmp_ary << a.to_i}
end

# p tmp_ary
kinmu_ary = tmp_ary.uniq.sort
# p kinmu_ary


mae_ar = 0
kinmu_count = 0
max_kinmu_ary = []


kinmu_ary.each.with_index(0) do |ar, index|
  if index == kinmu_ary.size - 1
    kinmu_count += 1
    max_kinmu_ary << kinmu_count
    break
  end

  if index == 0
    kinmu_count += 1
    mae_ar = ar.to_i
    next
  end

  # 順番に増えていれば勤務カウントを＋１
  if ar == mae_ar + 1
    kinmu_count += 1
    mae_ar = ar.to_i
    next
  # そうでなければ、勤務カウントを配列に格納し、リセットする。
  end
  max_kinmu_ary << kinmu_count
  kinmu_count = 1
  mae_ar = ar.to_i
end

puts max_kinmu_ary.max