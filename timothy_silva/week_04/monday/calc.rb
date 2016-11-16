require 'pry'

puts "Welcome to our calculator"

def menu
  puts ""
  puts "(a) - addition"
  puts "(s) - subtraction"
  puts "(m) - multiplication"
  puts "(d) - division"
  puts "(x) - exponent"
  puts "(r) - square root"
  puts "(q) - quit"
  print "Enter your choice: "
  gets().chomp()
end

def calc_function(operator)
  print "What is your first number? "
  first_num = gets.to_f
  if (operator == :**)
    print "What is your exponent? "
  else
    print "What is your second number? "
  end
  second_num = gets.to_f
  puts "The result is #{first_num.send(operator, second_num)}"
end

def square_root
  print "What number would you like to square root? "
  num = gets.to_f
  puts "The square root of #{num} is #{Math.sqrt(num)}"
end

user_choice = menu() #whatever is returned will be saved here

#Keep displaying the menu until the user_choice variable is "q"
until user_choice == "q"
  case user_choice
  when "a" then calc_function(:+)
  when "s" then calc_function(:-)
  when "d" then calc_function(:/)
  when "m" then calc_function(:*)
  when "x" then calc_function(:**)
  when "r" then square_root()
  else
    puts "#{user_choice} is not a valid option"
  end
  user_choice = menu()
end

puts ""
puts "Thanks for using our calculator"
