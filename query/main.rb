require_relative 'number_seq'
require_relative 'query_calc'

# インスタンス生成
num_seq = NumberSeq.new
query = QueryCalc.new

# 入力処理
num_seq.run
query.run

# 出力処理
query.calc(num_seq.numbers)