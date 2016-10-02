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

  #GET /posts/id
  def edit
    @post = Post.find(params[:id])
  end

  #PUT /post
  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(title: params[:title], body: params[:body])


    #respond_to do |format|
      if @post.save
        redirect_to post_path(@post)
        # format.json {render :show, status: :create}
      else
        #format.html {render :new}
        render "edit"
      end
    #end
  end

  #GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  #DELETE /posts/:id
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end