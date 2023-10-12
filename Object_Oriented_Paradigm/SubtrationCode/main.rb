require_relative 'subtraction'


Subtraction = Subtraction.new #create a new object

print "Please enter the first number in the subtration equation: "
num1 = gets.to_f
print "Please enter the second number in the subtration equation: "
num2 = gets.to_f

Subtraction.minus(num1, num2)

puts "The answer to your subtration equation is #{Subtraction.FinalAnswer}"#prints result