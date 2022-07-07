module Crud
  require 'bcrypt'

  def self.create_hash_digits(pass)
    BCrypt::Password.create(pass)
  end

  def self.verify_pass(pass)
    BCrypt::Password.new(pass)
  end

  def self.create_secret(list)
    list.each do |el|
      el[:password] = create_hash_digits(el[:password])
    end
    list
  end

  def self.authentic(username,pass,list)
    list.each do |record|
      if record[:username] == username && self.verify_pass(record[:username]) == pass
        return  record
      else
        puts 'Something wrong'
      end
    end
  end
end
