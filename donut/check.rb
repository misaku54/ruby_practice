module Check
  # 正しい数値かどうかをチェックする。
  def number_check(input)
    return puts "型エラー、処理終了します。#{input}" unless input.instance_of?(integer)
    return puts "範囲エラー、処理を終了します。#{input}" if input < 2
    return puts "範囲エラー、処理を終了します。#{input}" if input > 100
  end

  def line_check(input, width) # キーワード引数をハッシュとして受け取る
    return puts "型エラー、処理終了します。#{input}" unless input.instance_of?(String)
    return puts "範囲エラー、処理を終了します。#{input}" if input.size > width
    input.each_char {|c| return "#または.しか使えません。#{input}" unless c == "#" || c == "."}
  end
end