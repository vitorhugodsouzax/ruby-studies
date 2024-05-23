class  Student
     
    attr_accessor :first_name, :last_name, :email, :username
    attr_reader  

    @first_name
    @last_name
    @email
    @username
    @password

end

def to_s 
"First name: #{first_name}"
"Last name: #{last_name}"
"Email: #{email}"
"username: #{username}"
end

vitor = Student.new
puts "whats your first name?: "
vitor.first_name = gets.chomp
puts "whats you last name?: "
vitor.last_name = gets.chomp
vitor.email = "vitor@example.com"
vitor.username = "vitorhs"

puts "username is: #{vitor.first_name}"
puts "last name is: #{vitor.last_name}"
puts "email is: #{vitor.email}"
puts "username is: #{vitor.username}"