slide_ary = []
slide_count = 1

n = gets.chomp.to_i
ary = []

# 右スライド
def right_slide_minus(row,ar,n,slide_count,slide_ary)
  next_x = row.index(ar) + 1
  if next_x >= n
    slide_ary << slide_count
    p slide_ary 
    slide_count = 1
    return
  end
  if ar == row[next_x] - 1
    slide_count += 1
    right_slide_minus(row, row[next_x],n,slide_count,slide_ary)
  end
end

# 右スライド
def right_slide_plus(row,ar,n)
  next_x = row.index(ar) + 1
  if next_x >= n
    slide_ary << slide_count 
    slide_count = 1
    return
  end
  if ar == row[next_x] + 1
    slide_count += 1
    right_slide_plus(row, row[next_x],n)
  end
end

# 左スライド
def left_slide_plus(row,ar,n)
  mae_x = row.index(ar) - 1
  if mae_x < 0
    slide_ary << slide_count 
    slide_count = 1
    return
  end
  if ar == row[mae_x] + 1
    slide_count += 1
    left_slide_plus(row, row[mae_x],n)
  end
end

# 左スライド
def left_slide_minus(row,ar,n)
  mae_x = row.index(ar) - 1
  if mae_x < 0
    slide_ary << slide_count 
    slide_count = 1
    return
  end
  if ar == row[mae_x] - 1
    slide_count += 1
    left_slide_minus(row, row[mae_x],n)
  end
end


n.times do
  ary << gets.chomp.split('').map(&:to_i)
end
p ary
ary.each do |row|
  row.each do |ar|
    right_slide_minus(row,ar,n,slide_count,slide_ary)
    # right_slide_plus(row,ar,n)
    # left_slide_minus(row,ar,n)
    # left_slide_plus(row,ar,n)
  end
end


