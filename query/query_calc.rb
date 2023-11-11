class QueryCalc
  attr_accessor :ele_range
  
  def initialize
    @ele_range = []
  end
  
  def run
    input_range
  end

  def calc(ary)
    ele_range.each do |r|
      min = r[0]
      max = r[1]
      puts ary[min..max].sum
    end
  end
  
  private 
  
  def input_range
    # print 'クエリ数：'
    q_count = gets.chomp.to_i

    i = 0
    while i < q_count do
      # print '合計したい範囲：'
      tmp_range = gets.chomp.split.map(&:to_i)
      raise if tmp_range.size > 2
      raise if tmp_range[0] > tmp_range[1]
      ele_range.push(tmp_range)
      i += 1
    end
  end

end