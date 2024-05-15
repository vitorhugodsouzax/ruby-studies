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

#posso fazer dessa forma tambem


# puts "Enter your first name"
# first_name = gets.chomp
# puts "Enter your last name"
# last_name = gets.chomp
# full_name = first_name + " " + last_name
# puts "Your full name is #{full_name}"
# puts "Your full name reversed is #{full_name.reverse}"
# puts "Your name has #{full_name.length - 1} characters in it"