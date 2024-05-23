# class  Student
     
#     attr_accessor :first_name, :last_name, :email, :username
#     attr_reader  

#     @first_name
#     @last_name
#     @email
#     @username
#     @password

# end

# def to_s 
# "First name: #{first_name}"
# "Last name: #{last_name}"
# "Email: #{email}"
# "username: #{username}"
# end

# vitor = Student.new
# puts "whats your first name?: "
# vitor.first_name = gets.chomp
# puts "whats you last name?: "
# vitor.last_name = gets.chomp
# vitor.email = "vitor@example.com"
# vitor.username = "vitorhs"

# puts "username is: #{vitor.first_name}"
# puts "last name is: #{vitor.last_name}"
# puts "email is: #{vitor.email}"
# puts "username is: #{vitor.username}"

class Student
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(firstname, lastname, username, email, password)
      @first_name = firstname
      @last_name = lastname
      @username = username
      @email = email
      @password = password
    end
   
    def to_s
      "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                    email address: #{@email}"
    end
   
  end
   
  mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
                        "password1")
  john = Student.new("John", "Doe", "john1", "john1@example.com",
                        "password2")
  puts mashrur
  puts john
  mashrur.last_name = john.last_name
  puts "Mashrur is altered"
  puts mashrur