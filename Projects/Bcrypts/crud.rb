module Crud

  require 'bcrypt'
  
  puts "Module CRUD activated"
  
 #self.
  # Método para criar um hash seguro de uma senha
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
 
  # Método para converter um hash de senha em um objeto BCrypt::Password
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
 
  # Método para criar usuários seguros, substituindo as senhas por hashes
  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      # Substitui a senha pela sua versão hasheada
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end
 
  # Método para autenticar um usuário verificando nome de usuário e senha
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      # Verifica se o nome de usuário corresponde e se a senha hasheada é válida
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
end
