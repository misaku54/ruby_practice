# 右スライド
def minus_slide
  next_x = x + 1
  return slide_count if next_x >= n
  if row[x] == row[next_x] - 1
    slide_count += 1
    minus_slide(row, x=next_x)
  end
end

ary.each do |row|
  minus_slide(row, x=1)
end