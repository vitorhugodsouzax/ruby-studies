require 'bcrypt'
 
# my_password = BCrypt::Password.create("my password")
# puts my_password

my_password = BCrypt::Password.new("$2a$12$5f/LrZoQ4QEHIsGNfBgwhuPzB.fpcw9xieBfAlaQZ2ybqxJN8OjW6")
puts  my_password == "my password"     #=> true
# my_password == "not my password" #=> false
