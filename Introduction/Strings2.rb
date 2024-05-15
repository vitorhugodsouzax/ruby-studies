puts "Whats your first name?"
first_name = gets.chomp
puts "My first name is #{first_name}"

puts "Whats your last name?"
last_name = gets.chomp  
puts "My last name is #{last_name}"

reversed_first_name = first_name.reverse
reversed_last_name = last_name.reverse
total_characters = first_name.length + last_name.length


puts "My name in reversed is #{first_name} #{last_name}"
puts "My name in reversed is #{reversed_first_name} #{reversed_last_name}"
puts "My total characters is: #{total_characters}"
