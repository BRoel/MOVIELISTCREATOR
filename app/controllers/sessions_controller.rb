class SessionsController < ApplicationController

    def new
      @user = User.new
      render :login
    end
  
    def create
      @user = User.find_by(:email => params[:email])
      if @user && @user.authenticate(params[:password])
        login(@user)
        redirect_to "/"
      else
        redirect_to "/login", :notice => "Can't find that email."
      end
    end
    def create
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to lists_path
      else
        flash[:error] = "Your username or password was incorrect"
        redirect_to '/login'
      end
    end
  
end
