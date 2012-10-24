class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :name, :nric, :phone, :email, :password

  validates :password, :presence => true
end
