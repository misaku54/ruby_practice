module Check
  # 正しい数値かどうかをチェックする。
  def number_check(input)
    return puts "型エラー、処理終了します。#{input}" unless input.instance_of?(integer)
    return puts "範囲エラー、処理を終了します。#{input}" if input < 0
    return puts "範囲エラー、処理を終了します。#{input}" if input > 100
  end
end