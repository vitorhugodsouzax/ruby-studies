puts "Simple calculator!"
25.times {print "-"}
puts 

puts "Enter the first number"
num_1 = gets.chomp

puts "Enter the second number"
num_2 = gets.chomp

puts "The first number multiplied by the second number is: #{num_1.to_i * num_2.to_i}"
25.times {print "-"}
puts
puts "The first number divided by the second number is: #{num_1.to_f / num_2.to_f}"
25.times {print "-"}
puts
puts "The first number added by the second number is: #{num_1.to_i + num_2.to_i}"
25.times {print "-"}
puts
puts "The first number subtracted by the second number is: #{num_1.to_i - num_2.to_i}"
25.times {print "-"}
puts
puts "The first number mod by the second number is: #{num_1.to_i % num_2.to_i}"