class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Signed in successfully"
      redirect_to root_path
    else
      flash[:errors] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Signed out successfully"
    redirect_to root_path
  end
end
