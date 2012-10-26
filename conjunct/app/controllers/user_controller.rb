class UserController < ApplicationController
  def login
    @username = params[:name]
    @password = params[:password]
    puts @username
    puts @password
    @user = User.authenticate(@username, @password)
    if !@user.nil?
      redirect_to :action => "home"
    else
      render('user/login')
    end
  end

  def home
  end
end
