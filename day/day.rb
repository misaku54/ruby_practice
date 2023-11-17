# 二次元配列で管理する。
# ary = [[1,2],[2,3],[5,7],[8,15]]
ary = []
n = gets.chomp.to_i

n.times do
  tmp =  gets.chomp.split.map(&:to_i)
  raise if tmp[0] > tmp[1]
  ary << tmp
end

# p ary
tmp_ary = []
ary2 = []
mae_back = 0

ary.each.with_index(0) do |ar, index|
  front = ar[0].to_i
  back  = ar[1].to_i

  # 初回だけ、全て格納する。
  if index == 0
    tmp_ary.push(front)
    tmp_ary.push(back)
    mae_back = back
    next
  end

  
  if front == mae_back
    tmp_ary.push(front)
    tmp_ary.push(back)
    mae_back = back
    if index == ary.size - 1
      ary2 << [tmp_ary.min, tmp_ary.max]
    end
    next
  end

  if front == mae_back + 1
    tmp_ary.push(front)
    tmp_ary.push(back)
    mae_back = back
    if index == ary.size - 1
      ary2 << [tmp_ary.min, tmp_ary.max]
    end
    next
  end

  if front < mae_back
    tmp_ary.push(front)
    tmp_ary.push(back)
    mae_back = back
    if index == ary.size - 1
      ary2 << [tmp_ary.min, tmp_ary.max]
    end
    next
  end

  ary2 << [tmp_ary.min, tmp_ary.max]
  tmp_ary = []
  tmp_ary.push(front)
  tmp_ary.push(back)
  mae_back = back
  # p tmp_ary
end

ary3 = []

ary2.each do |ar2|
  ary3 << ar2[1] - ar2[0] + 1
end

puts ary3.max