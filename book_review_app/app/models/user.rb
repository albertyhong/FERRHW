class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
end

def is_teen?
	if @age > 11 and @age < 20
		true
end

def has_long_name?
	
end
