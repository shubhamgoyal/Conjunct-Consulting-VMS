class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :name, :nric, :phone, :email, :password

  validates :password, :presence => true
  has_and_belongs_to_many :tasks
 def my_password
   @password ||= Password.new(password)
 end

  def self.authenticate(username, password)
    user = User.find_by_name(username)
    if !user.nil?
      if user.my_password == password
        user
      else
        nil
      end
    end
  end
end
