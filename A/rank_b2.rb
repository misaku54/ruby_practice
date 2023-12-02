class Array
  attr_accessor :bort
  
  def initialize
    @bort = nil
  end

  ary = [1,2,3,4]

  ary.each do |ar|
    puts ar
  end

  n = gets.chomp.to_i
  n.times do
    puts n
  end
end