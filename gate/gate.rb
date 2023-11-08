class Gate
  attr_accessor :route_c, :station_c, :fee_ary

  # 初期化
  def initialize
    @route_c = 0
    @station_c = 0
    @fee_ary = []
  end

  # 実行
  def run
    setup
  end

  private 

  # インプット路線、駅の数
  def setup
    print '路線の数:'
    self.route_c   = gets.chomp.to_i
    print '駅の数:'
    self.station_c = gets.chomp.to_i
  end

  # インプット運賃料金
  def input_fee
    counter = 1
    while counter <= route_c do
      tmp = gets.chomp.split.map(&:to_i)
      self.fee_ary << tmp
    end
  end

  # 運賃計算
  def calc

  end
end

# 実行部
