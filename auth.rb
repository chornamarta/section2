users = [
  { username: 'user1', password: 'pass1' },
  { username: 'user2', password: 'pass2' },
  { username: 'user3', password: 'pass3' },
  { username: 'user4', password: 'pass4' },
]

puts 'Welcome to the authentication'
25.times { print '-' }

def auth(name,passw,list_u)
  list_u.each do |user|
    if user[:username] == name && user[:password] == passw
      return user
    end
  end
  'There is smth wrong.Try again!'
end

attemps = 1
while attemps < 4
  puts "\nEnter username:"
  username = gets.chomp

  puts 'Enter password:'
  pass = gets.chomp

  puts auth(username,pass,users)

  p 'If you wanna exit pres n and if you wanna continue press any key'
  input = gets.chomp.downcase
  break if 'n' == input

  attemps += 1
end
puts 'You reached max attempts'