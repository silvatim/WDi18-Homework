require 'pry'

puts "Welcome to the BMI calculator"

def calc_bmi
  puts ""
  print "Enter weight in kilos: "
  weight = gets.to_f
  print "Enter height in meters: "
  height = gets.to_f
  bmi = weight / ( height ** 2 )
  puts "The BMI is #{(bmi).round(1)}"
end

calc_bmi()

puts ""
puts "Thanks for using the BMI calculator"
