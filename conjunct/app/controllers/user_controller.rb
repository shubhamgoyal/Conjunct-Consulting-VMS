class UserController < ApplicationController

  def login
    @username = params[:name]
    @password = params[:password]
    if !@username.nil? && !@password.nil?
      @user = User.authenticate(@username, @password)
    end
    if !@user.nil?
      @username = @user.name
      puts @username
      session[:user_id] = @user.id
      redirect_to :action => "home"
    else
      render('user/login')
    end
  end

  def home
    @username = current_user.name
  end

  def signup
    @username = params[:uname]
    password = params[:password]
    if @username.nil? || password.nil?
      render('user/signup')
    elsif
      password = BCrypt::Password.create(password)
      user = User.create(:name => @username, :password => password)
      session[:user_id] = user.id
      @username = user.name
      redirect_to :action => "home"
    end
  end
end
