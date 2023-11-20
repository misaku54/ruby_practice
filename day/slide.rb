# 右スライド
def minus_slide(row,ar)
  next_x = row.index(ar) + 1
  if next_x >= n
    slide_ary << slide_count 
    slide_count = 0
  end
  if ar == row[next_x] - 1
    slide_count += 1
    minus_slide(row, next_x)
  end
end

ary.each do |row|
  row.each do |ar|
    minus_slide(row,ar)
  end
end
