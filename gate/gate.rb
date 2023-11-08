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
    setup_route
    setup_load_map
    calc
  end

  private 

  # インプット路線、駅の数
  def setup_route
    print '路線の数:'
    # self.route_c   = gets.chomp.to_i
    # print '駅の数:'
    # self.station_c = gets.chomp.to_i
    tmp = gets.chomp.split.map(&:to_i)
    self.route_c = tmp[0]
    self.station_c = tmp[1]
    setup_fee
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
    p fee_ary
  end

  def setup_load_map
    print "ゴールまでに経由する駅の数:"
    goal_c = gets.chomp.to_i   

    counter = 1
    while counter <= goal_c do
      hash = {}
      print '路線番号 駅番号:'
      tmp = gets.chomp.split.map(&:to_i)
      hash[:rot_num]= tmp[0]-1
      hash[:sta_num]= tmp[1]-1
      self.load_map << hash
      counter += 1
    end
    p load_map
  end

  # 運賃計算
  def calc
    sum_fee = 0
    tmp_fee = 0
    mae_sta_num = 0

    load_map.each.with_index do |load, index|
      rot_num = load[:rot_num]
      sta_num = load[:sta_num]

      tmp_fee = fee_ary[rot_num][sta_num] 

      if index > 0
        if sta_num == mae_sta_num
          tmp_fee = 0
        end

        if sta_num < mae_sta_num
          tmp_fee = fee_ary[rot_num][mae_sta_num] - fee_ary[rot_num][sta_num] 
        end

        if sta_num > mae_sta_num
          tmp_fee = fee_ary[rot_num][sta_num] - fee_ary[rot_num][mae_sta_num]
        end
      end
      sum_fee += tmp_fee
      mae_sta_num = sta_num
    end
    p sum_fee
  end
end

# 実行部
gate = Gate.new
gate.run