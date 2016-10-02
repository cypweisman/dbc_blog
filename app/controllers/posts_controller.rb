class PostsController < ApplicationController
  #GET /posts
  def index
    @posts = Post.all
  end

  #GET /posts/new
  def new
    @post = Post.new
  end

  #POST /post
  def create
    @post = Post.new(title: params[:title], body: params[:body])
    @post.user_id = session[:user_id]

    #respond_to do |format|
      if @post.save
        redirect_to post_path(@post)
        # format.json {render :show, status: :create}
      else
        #format.html {render :new}
        render "new"
      end
    #end
  end

  #GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end
end