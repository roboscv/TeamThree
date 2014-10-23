class SessionsController < ApplicationController
def new
end

def create
  user1 = User.create(name: 'user1', user_id: 'Test', password: 'pw1', admin: 'true')
  user1.save
  user = User.find_by_user_id(params[:user_id])
  user = user.authenticate(params[:user_id])
  user = user.authenticate(params[:password])
  if user
    session[:user_id] = user.id
    redirect_to books_url, :notice => "Logged in!" 
  else
    flash.now.alert = "Invalid user id or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end

end
