class SessionsController < ApplicationController
  def loginpage
  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/contacts'
    else
      redirect_to "/login"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/login"
  end

end
