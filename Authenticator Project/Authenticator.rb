users = [
{ username: "vitor", password: "password1"},
{ username: "joao", password: "password2"},
{ username: "pedro", password: "password3"},
{ username: "jose", password: "password4"},
{ username: "kaua", password: "password5"}
]


puts "welcome to the authenticator"
25.times{ print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

#we will learn
# hash, array, branching, while loops and designing program execution flow


attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    users.each do |user|
        if username == user[:username] && password == user[:password]
            puts user
            break
        else
            puts "invalid username or password"
        end
    end

    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
    
  if attempts >= 4 
    puts "authenticator is interrupted"
  end


