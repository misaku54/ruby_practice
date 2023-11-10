class Wheel
  attr_accessor :gondola_num, :group_num, :ride_limit_ary, :group_count_ary, :ride_count_ary

  # 初期化
  def initialize
    @gondola_num = 0
    @group_num = 0
    @ride_limit_ary  = []
    @group_count_ary = []
    @ride_count_ary  = []
  end

  # 実行部
  def run
    input_gond_grop_number
    input_ride_limit
    input_group_count
    counter
    out
  end

  private
  
  # インプット
  def input_gond_grop_number
    # print 'ゴンドラの数 グループの数'
    tmp = gets.chomp.split.map(&:to_i)
    self.gondola_num = tmp[0]
    self.group_num = tmp[1]
    # p gondola_num
    # p group_num
  end

  def input_ride_limit
    i = 1
    while i <= gondola_num do
      # print "#{i}番のゴンドラの乗車可能人数："
      self.ride_limit_ary << gets.chomp.to_i
      self.ride_count_ary << 0
      i += 1
    end
    # p ride_limit_ary
    # p ride_count_ary
  end

  def input_group_count
    j = 1
    while j <= group_num do
      # print "#{j}組目のグループの人数："
      self.group_count_ary << gets.chomp.to_i
      j += 1
    end
    # p group_count_ary
  end

  # カウントロジック
  def counter
    # グループの人数
    i = 0
    
    group_count_ary.each do |group_count|
  
      while true do
        ride_limit = ride_limit_ary[i]
        tmp = group_count - ride_limit
        if tmp <= 0
          # p group_count
          self.ride_count_ary[i] = self.ride_count_ary[i] + group_count 
          # p ride_count_ary
          i += 1
          if i == gondola_num
            i = 0
          end
          break
        else
          self.ride_count_ary[i] = self.ride_count_ary[i] + ride_limit
          group_count = tmp
          i += 1
          if i == gondola_num
            i = 0
          end
        end
      end
    end

  end
  # アウトプット
  def out
    ride_count_ary.each do |ary|
      puts ary
    end
  end
end

wheel = Wheel.new
wheel.run