class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_many :shouts
  #Even though model name is singular, shouts is still plural because it is many shouts
end
