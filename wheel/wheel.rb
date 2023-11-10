class Wheel
  attr_accessor :gondola_num, :group_num, :ride_limit_ary, :group_count_ary

  # 初期化
  def initialize
    @gondola_num = 0
    @group_num = 0
    @ride_limit_ary  = []
    @group_count_ary = []
  end

  # インプット
  def input_gond_grop_number
    tmp = gets.chomp.split.map(&:to_i)
    self.gondola_num = tmp[0]
    self.group_num = tmp[1]
  end

  def input_ride_limit
    i = 1
    while i <= gondola_num do
      print "#{i}番のゴンドラの乗車可能人数："
      self.ride_limit_ary << gets.chomp.to_i
      i += 1
    end
  end

  def input_group_count
    j = 1
    while j <= group_num do
      print "#{j}組目のグループの人数："
      self.group_count_ary << gets.chomp.to_i
      j += 1
    end
  end
end