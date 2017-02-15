require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

e5 = @store2.employees.create(first_name: "Rodrigo", last_name: "Carbajal", hourly_rate: 50)

p e5.password