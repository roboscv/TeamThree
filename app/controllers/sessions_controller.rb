class SessionsController < ApplicationController
def new
end

def create
  user = User.find_by_username(:user_id).authenticate(params[:user_id], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to books_url, :notice => "Logged in!" 
  else
    flash.now.alert = "Invalid username or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
end
