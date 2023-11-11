class NumberSeq
  attr_accessor :numbers

  # 初期化
  def initialize
    @numbers = []
  end

  # 実行
  def run
    input_ary
  end

  private 

  def input_ary
    element_limit  = gets.chomp.to_i
    self.numbers = gets.chomp.split.map(&:to_i)

    # 要素数が超えていたら例外を出す。
    if numbers.size > element_limit
      raise
    end
  end
end