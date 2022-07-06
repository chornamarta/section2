require 'bcrypt'
# my_pass = BCrypt::Password.create("passssswors")
#
# puts my_pass
#

users = [
  { username: 'user1', password: 'pass1' },
  { username: 'user2', password: 'pass2' },
  { username: 'user3', password: 'pass3' },
  { username: 'user4', password: 'pass4' },
]

def create_hash_digits(pass)
  BCrypt::Password.create(pass)
end

def verify_pass(pass)
  BCrypt::Password.new(pass)
end

def create_secret(list)
  list.each do |el|
    el[:password] = create_hash_digits(el[:password])
  end
  list
end

puts create_secret(users)