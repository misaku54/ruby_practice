module Check
  # 正しい数値かどうかをチェックする。
  def number_check(input)
    raise ArgumentError, "範囲エラー、処理を終了します。#{input}" if input < 3
    raise ArgumentError, "範囲エラー、処理を終了します。#{input}" if input > 100
  end

  def line_check(input, width) # キーワード引数をハッシュとして受け取る
    raise ArgumentError, "型エラー、処理終了します。#{input}" unless input.instance_of?(String)
    raise ArgumentError, "範囲エラー、処理を終了します。#{input}" if input.size > width
    input.each_char {|c| raise ArgumentError,  "#または.しか使えません。#{input}" unless c == "#" || c == "."}
  end

  # .の座標を取得する。
  def donut_check(donut_ary)
    target = []

    # .の座標を配列に格納
    donut_ary.each.with_index do |ary, idx_y|
      next if idx_y == 0 || idx_y == (height.to_i - 1)
      ary.each_char.with_index do |c, idx_x|
        target << { x: idx_x, y: idx_y } if c == "."
      end
    end
    donut_count(target)
  end

  private
  
  # 取得した.座標をもとに.の上下の配列をチェックし、ドーナツ数をカウントする。
  def donut_counter(tgt)
    tgt.each do |t|
      x = t[:x]
      y = t[:y]
      next if x == 0 || x == (width.to_i - 1)
      next unless donut_ary[y-1][x-1..x+1] === "###"
      next unless donut_ary[y+1][x-1..x+1] === "###"
      next unless donut_ary[y][x+1] === "#"
      next unless donut_ary[y][x-1] === "#"
      self.donut_count = self.donut_count + 1
    end
  end

end