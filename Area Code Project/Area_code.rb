dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Função que pega os nomes das cidades
def get_city_names(somehash)
  somehash.keys
end

# Função que pega o código de área de uma cidade
def get_area_code(somehash, key)
  somehash[key]
end

# Jogo de perguntas e respostas
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase

  if answer != "y"  # Se a resposta não for "y", termina o jogo
    puts "Exiting..."
    break
  end
  
  puts "Which city do you want to lookup the areacode for?"
  puts get_city_names(dial_book)  # Mostra os nomes das cidades
  puts "Enter your selection"
  prompt = gets.chomp  # Pega o nome da cidade que você digitou
  
  if dial_book.include?(prompt)  # Verifica se a cidade está no diario
    puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "invalid city name"  # Diz que a cidade não está no diario
  end
end