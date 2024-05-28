require 'bcrypt'
 
# my_password = BCrypt::Password.create("my password")
# puts my_password

users = [
          { username: "vitor", password: "password1" },
          { username: "joao", password: "password2" },
          { username: "jose", password: "password3" },
          { username: "kaua", password: "password4" },
          { username: "lucas", password: "password5" }
        ]
 
def create_hash_digest(password)
  BCrypt::Password.create(password)
end
 
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end
 
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)