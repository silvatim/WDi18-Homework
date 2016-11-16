
require 'pry'

puts "Welcome to the trip calculator"

def calc_trip
  puts ""
  print "How far do you want to travel in miles: "
  distance = gets.to_f
  print "Please enter how many miles per gallon: "
  miles_per_gallon = gets.to_f
  print "Please enter price per gallon: "
  price_per_gallon = gets.to_f
  print "Please enter speed in miles per hour: "
  speed = gets.to_f

  puts "The trip will cost $#{(distance / miles_per_gallon * price_per_gallon).round(2)}"
  puts "The trip will take #{(distance / speed * 60).round(0)} minutes"
end

calc_trip()

puts ""
puts "Thanks for using the trip calculator"
