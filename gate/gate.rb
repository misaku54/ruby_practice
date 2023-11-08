class Gate
  attr_accessor :route_c, :station_c, :fee_ary, :load_map

  # 初期化
  def initialize
    @route_c = 0
    @station_c = 0
    @fee_ary = []
    @load_map = []
  end

  # 実行
  def run
    setup
  end

  private 

  # インプット路線、駅の数
  def setup_route
    print '路線の数:'
    self.route_c   = gets.chomp.to_i
    print '駅の数:'
    self.station_c = gets.chomp.to_i
    input_fee
  end

  # インプット運賃料金
  def setup_fee
    counter = 1
    while counter <= route_c do
      print "#{counter}路線目:"
      tmp = gets.chomp.split.map(&:to_i)
      self.fee_ary << tmp
      counter += 1
    end
  end

  def setup_load_map
    print "ゴールまでに経由する駅の数:"
    goal_c = gets.chomp.to_i   

    counter = 1
    while counter <= goal_c do
      print '路線番号 駅番号:'
      self.load_map << gets.chomp.split.map(&:to_i)
      counter += 1
    end
  end

  # 運賃計算
  def calc

  end
end

# 実行部
