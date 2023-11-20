# 右スライド
def minus_slide
  return slide_count if 
  if row[x] == row[x + 1] - 1
    slide_count += 1

  end
end

ary.each do |row|
  minus_slide(row)
end