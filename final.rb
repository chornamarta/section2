require_relative 'crud'
users = [
  { username: 'user1', password: 'pass1' },
  { username: 'user2', password: 'pass2' },
  { username: 'user3', password: 'pass3' },
  { username: 'user4', password: 'pass4' },
]

new_users = Crud.create_secret(users)
puts new_users