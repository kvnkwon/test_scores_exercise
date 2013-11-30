require 'csv'
require_relative 'score_calc'
require 'pry'
scores = []
CSV.foreach('test_data.csv', headers: true) do |row|
  scores << {name: row['Name'], grade: row['Grade']}
end

scorecalc = ScoreCalculator.new(scores)


scorecalc.counter_90
scorecalc.counter_80
scorecalc.counter_70
scorecalc.counter_rest
puts
scorecalc.above_90?
puts
scorecalc.above_80?
puts
scorecalc.above_70?
puts
scorecalc.lower_70?

