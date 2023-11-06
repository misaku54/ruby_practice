require_relative 'check'
class Picture
  attr_accessor :height, :width, :donut_ary, :donut_count

  # 初期化
  def initialize
    @height = 0
    @width  = 0
    @donut_ary = []
    @donut_count = 0
  end

  # 実行部
  def run
    setup_matrix
    input_picture
    donut_check(donut_ary)
  end

  private
  # 縦横のマス数の入力
  def setup_matrix
    # 代入する時はselfが必要、参照する際はいらない。
    print '縦方向のマス数：'
    self.height = gets.chomp.to_i
    number_check(height)
    print '横方向のマス数：'
    self.width  = gets.chomp.to_i
    number_check(width)
  end

  # 絵を入力
  def input_picture
    counter = 1
    while counter <= height do
      print "#{counter}行目："
      input_line = gets.chomp.to_s

      self.donut_ary << input_line
      counter += 1
    end
  end

  # ドーナツ数をカウント
  include Check
end

picture = Picture.new
picture.run

