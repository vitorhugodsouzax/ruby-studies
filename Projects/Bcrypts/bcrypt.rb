require 'bcrypt'
 
my_password = BCrypt::Password.create("my password")
  #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
 
my_password.version              #=> "2a"
my_password.cost                 #=> 10
my_password == "my password"     #=> true
my_password == "not my password" #=> false
 
# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false