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
    ele_count  = gets.chomp.to_i
    
    i = 0
    while i < ele_count do
      tmp = gets.chomp.to_i
      numbers.push(tmp)
    end

    p numbers
  end
end