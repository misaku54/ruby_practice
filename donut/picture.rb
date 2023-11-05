class Picture
  attr_accessor :height, :width, :donut_ary

  # 初期化
  def initialize
    @height = 0
    @width  = 0
    @donut_ary = []
  end

  # 実行部
  def run

  end

  private

  # 絵を入力
  def input_picture
    # 代入する時はselfが必要、参照する際はいらない。
    print '縦方向のマス数：'
    self.height = gets.chomp.to_i
    print '横方向のます数：'
    self.width  = gets.chomp.to_i
    print '１行目：'
  end

  # ドーナツ数をカウント
  def donut_count

  end
end