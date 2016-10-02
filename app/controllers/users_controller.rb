class UsersController < ApplicationController

  #GET /users/new
  def new
    @user = User.new
  end

  #POST /users
  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])

    #respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        redirect_to posts_path
        # format.json {render :show, status: :create}
      else
        #format.html {render :new}
        render "new"
      end
    #end
  end


end