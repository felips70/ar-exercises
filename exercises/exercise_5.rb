require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
p "Total annual revenue: $#{Store.sum(:annual_revenue)}"

p "Average annual revenue: $#{Store.average(:annual_revenue).floor}"

p "There are #{Store.where("annual_revenue <= ?", 1000000).count} stores generating more than 1M"