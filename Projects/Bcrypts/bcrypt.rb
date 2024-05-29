require 'bcrypt'
# Aqui está importando a biblioteca 'bcrypt', que é utilizada para hashing seguro de senhas.

# my_password = BCrypt::Password.create("my password")
# puts my_password

# Define uma lista de usuários, cada um com um nome de usuário e uma senha em texto simples.
users = [
          { username: "vitor", password: "password1" },
          { username: "joao", password: "password2" },
          { username: "jose", password: "password3" },
          { username: "kaua", password: "password4" },
          { username: "lucas", password: "password5" }
        ]

# Define um método para criar um hash da senha utilizando o BCrypt.
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

# Define um método para verificar o hash da senha. Este método transforma o hash armazenado
# em um objeto BCrypt::Password, permitindo a comparação com a senha fornecida pelo usuário.
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

# Define um método para criar uma lista de usuários com senhas seguras.
# Este método itera sobre cada registro de usuário, substituindo a senha em texto simples
# pelo hash seguro gerado pelo método create_hash_digest.
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

# Imprime a lista de usuários com as senhas seguras (hashed) no console.
puts create_secure_users(users)
