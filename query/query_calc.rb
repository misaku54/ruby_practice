class QueryCalc
  attr_accessor :ele_range
  
  def initialize
    @ele_range = []
  end

  def run
    input_range
  end

  private 

  def input_range
    print 'クエリ数：'
    q_count = gets.chomp.to_i

    i = 0
    while i < q_count do
      print '合計したい範囲：'
      tmp_range = gets.chomp.split.map(&:to_i)
      raise if tmp_range.size > 2
      ele_range.push(tmp_range)
      i += 1
    end
    p ele_range
  end

  def calc
    
  end
end