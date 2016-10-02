class PostsController < ApplicationController
  #GET /posts
  def index
    @posts = Post.all
  end

  #POST /post
  def create

  end

  #GET /tweets/:id
  def show
    @tweet = Tweet.find(params[:id])
  end
end