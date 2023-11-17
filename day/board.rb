

ary1 = [1, 1, 2, 1]
ary2 = [2, 1, 1, 2]
ary3 = [2, 1, 1, 2]
ary_ar = [ary1, ary2, ary3]
w = 4




ary1.each.with_index(0) do |ar, index|
  tmp_ar = [ary2[index - 1], ary2[index] ,ary2[index + 1]]
  if index == 0
    tmp_ar = [ary2[index],ary2[index + 1]]
  end

  if index == ar.size - 1
    tmp_ar = [ary2[index - 1], ary2[index]]
  end

  ary2_max = tmp_ar.max
  ary2_max_index = tmp_ar.index(max)

  ary3[ary2_max_index - 1]
  ary2_max_index


  arr.index(arr.max)
end