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

  def donut_check(donut)
    target = []
    
    donut.each_char.with_index do |c, index|
      target << index.to_i if c == "."
    end

    target.each do |t|
      x = if t - width > 0
      else 
        next
      end 
      p donut[x-1..x+1]
    end
    
  end
end