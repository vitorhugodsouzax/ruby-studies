# users array where username and password are stored
users = [
{ username: "vitor", password: "password1"},
{ username: "joao", password: "password2"},
{ username: "pedro", password: "password3"},
{ username: "jose", password: "password4"},
{ username: "kaua", password: "password5"}
]

# authentication method to check and verify if username/password combination exists

def auth_user (username, password, list_of_users)
   list_of_users.each do |user_record|
        if username == user_record[:username] && password == user_record[:password]
            return user_record
        end
    end
    "Credentials were not correct"
end

# program execution flow
 
puts "welcome to the authenticator"
25.times{ print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"



attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
    
  if attempts == 4
    puts "You have exceeded the number of atempts"
  end


