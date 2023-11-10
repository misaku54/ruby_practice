class Road
  attr_accessor :car_count, :car_num_ary

  def initialize
    @car_count = 0
    @car_num_ary = []
  end

  def run
    input_car_count
    input_car_num_ary
    lap_count
  end

  private 

  def input_car_count
    # print '教習車の数：'
    self.car_count = gets.chomp.to_i
    # p car_count
  end

  def input_car_num_ary
    i = 1
    while i <= car_count do
      # print "#{i}番目の教習車の番号"
      self.car_num_ary.push(gets.chomp.to_i)
      i += 1
    end
    # p car_num_ary
  end

  # 周回をカウント
  def lap_count
    max_car_num = car_num_ary.max
    min_car_num = car_num_ary.min
    l_count = 0 

    # 配列内の車番の最大値と最小値が同じになるまでループ
    while min_car_num != max_car_num  do 
      tmp = car_num_ary.shift
      
      case tmp
      # 取り出した値が最小番号なら最小番号を更新し次のループへ
      when min_car_num
        min_car_num = car_num_ary.min
        next
      # 取り出した値が最大番号ならカウント＋１してプッシュする
      when max_car_num
        l_count += 1
        car_num_ary.push(tmp)
      # 取り出した値が最大番号、最小番号でもないならそのままプッシュする
      else
        car_num_ary.push(tmp)
      end

      min_car_num = car_num_ary.min
    end
    p l_count
  end
end

road = Road.new
road.run
