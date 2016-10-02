class SessionsController < ApplicationController
  #DELETE /sessions/:id

  def new
    #@user = User.new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
    #@errors = ["Invalid data"]
    #create a partial
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_path
  end
end