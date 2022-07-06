puts "Simple calculator"
puts "Enter first number"
num1 = gets.chomp
puts "Enter second number"
num2 = gets.chomp

def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f      
  end

def divide(first_number, second_number)
    first_number.to_f / second_number.to_f      
end

def subtract(first_number, second_number)
    second_number.to_f - first_number.to_f      
end

def mod(first_number, second_number)
    first_number.to_f % second_number.to_f      
end

puts "Enter math operation"
oper = gets.chomp

if oper == "1"
    puts "You choose multiply"
    result = multiply(num1,num2)
elsif oper == "2"
    puts "You choose divide"
    result = divide(num1,num2)
else
    puts "You choose substract"
    result = subtract(num1,num2)
end

puts result
