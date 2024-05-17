puts "Simple calculator!"
25.times {print "-"}
puts 
puts "Enter the first number"
first_number = gets.chomp
puts "Enter the second number"
second_number = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
user_entry = gets.chomp
if user_entry == "1"
    puts "You have chosen to multiply"
    puts
elsif user_entry == "2"
    puts "You have chosen to add"
    puts
elsif user_entry == "3"
    puts "you have chosen to subraction"
    puts
else 
    puts "Invalid entry"
    puts
end

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end
def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end
def added(first_num, second_num)
    first_num.to_f + second_num.to_f
end
def subtracted(first_num, second_num)
    first_num.to_f - second_num.to_f
end
def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

if user_entry == "1"
    puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
25.times {print "-"}
    puts
elsif user_entry == "2"
    puts "The first number added by the second number is: #{added(first_number, second_number)}"
25.times {print "-"}
puts
elsif user_entry == "3"
    puts "The first number subtracted by the second number is: #{subtracted(first_number, second_number)}"
25.times {print "-"}
puts
else 
    puts "Invalid entry"
end


#other form

# puts "What do you want to do? 1) multiply 2) divide 3) subtract 4) find remainder"
#     prompt = gets.chomp
#     puts "Enter in your first number"
#     first_number = gets.chomp
#     puts "Enter in your second number"
#     second_number = gets.chomp
#     if prompt == '1'
#       puts "You have chosen to multiply #{first_number} with #{second_number}"
#       result = multiply(first_number, second_number)
#     elsif prompt == '2'
#       puts "You have chosen to divide"
#       result = divide(first_number, second_number)
#     elsif prompt == '3'
#       puts "You have chosen to subtract"
#       result = subtract(first_number, second_number)
#     elsif prompt == '4'
#       puts "You have chosen to find the remainder"
#       result = mod(first_number, second_number)
#     else
#       puts "You have made an invalid choice"
#     end