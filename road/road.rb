class Road
  attr_accessor :car_count, :car_num_ary

  def initialize
    @car_count = 0
    @car_num_ary = []
  end

  def run
    input_car_count
    input_car_num_ary
  end

  def input_car_count
    print '教習車の数：'
    self.car_count = gets.chomp.to_i
    p car_count
  end

  def input_car_num_ary
    i = 1
    while i <= car_count do
      print "#{i}番目の教習車の番号"
      self.car_num_ary.push(gets.chomp.to_i)
      i += 1
    end
    p car_num_ary
  end
end

road = Road.new
road.run
