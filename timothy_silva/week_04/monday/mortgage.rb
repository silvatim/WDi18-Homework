require 'pry'

puts "Welcome to the mortgage calculator"

def menu
  puts ""
  print "Please enter mortage amount: "
  amount = gets.to_f
  print "Please enter interest rate: "
  rate = gets.to_f
  print "Please enter term of loan in years: "
  term = gets.to_f
  calc_mortgage(amount, rate, term)
end

def calc_mortgage(amount, rate, term)
   num_payments = term * 12
   monthly_rate = (rate / 100) / 12
   sum1 = monthly_rate * ( 1 + monthly_rate ) ** num_payments
   sum2 = ( 1 + monthly_rate ) ** num_payments - 1
   repayments = amount * ( sum1 / sum2 )
   puts "Monthly repayments are $#{repayments.round(2)}"
end

menu()

puts ""
puts "Thanks for using the mortgage calculator"
