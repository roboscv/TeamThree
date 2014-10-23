class SessionsController < ApplicationController

def new
end

def create
    user1 = User.new(name: 'user1', username: 'Test', password: 'pw1', admin: 'true')
    user1.save
  user =
  user = user1.authenticate(params[:username])
  user = user1.authenticate(params[:password])
  if user
  
    session[:username] = user.id
    redirect_to books_url, :notice => "Logged in!" 
  else
    flash.now.alert = "Invalid user id or password"
    render "new"
  end
end

def destroy
  session[:username] = nil
  redirect_to root_url, :notice => "Logged out!"
end

end
