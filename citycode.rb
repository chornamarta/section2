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

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  puts key+"->"+somehash[key]
end

# Execution flow
loop do
  puts 'Do you want to find out code to city?(Y/N)'
  input = gets.chomp.downcase
  break if input != 'y'
  puts 'What city you are looking?'
  puts get_city_names(dial_book)
  puts 'Enter the city from the list above:'
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts 'The code is:'
    get_area_code(dial_book,city)
    puts
  else
    puts "You enter wrong city\n"
  end
end

