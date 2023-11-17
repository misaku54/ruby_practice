# 二次元配列で管理する。
ary = [[1,4],[2,3],[5,7],[8,15]]

ary.each.with_index do |ar, index|

  # 初回だけ、全て格納する。
  if index = 0
    front = ar[0]
    back  = ar[1]   
    tmp_ary.push(front)
    tmp_ary.push(back)
    next
  end
  
  if front = mae_back
    tmp_ary.push(front)
    tmp_ary.push(back)
    next
  end

  if front = mae_back + 1
    tmp_ary.push(front)
    tmp_ary.push(back)
    next
  end

  if front < mae_back
    tmp_ary.push(front)
    tmp_ary.push(back)
    next
  end
  # 最大と最小を求める。a = b, b = a + 1, b < a
  if front = 

  end
  

end