class PostsController < ApplicationController
before_action :authenticate_user!


  def index
    @posts = Post.all
  end

  def show
        @post = Post.find(params[:id])

  end

  def new
  end

  def create
      @post = Post.create(title: params[:title], email: params[:email])
      
    
    redirect_to "/posts/index"
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end