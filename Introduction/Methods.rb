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


puts "Simple calculator!"
25.times {print "-"}
puts 

puts "Enter the first number"
first_number = gets.chomp

puts "Enter the second number"
second_number = gets.chomp

puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
25.times {print "-"}
puts
puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
25.times {print "-"}
puts
puts "The first number added by the second number is: #{added(first_number, second_number)}"
25.times {print "-"}
puts
puts "The first number subtracted by the second number is: #{subtracted(first_number, second_number)}"
25.times {print "-"}
puts
puts "The first number mod by the second number is: #{mod(first_number, second_number)}"