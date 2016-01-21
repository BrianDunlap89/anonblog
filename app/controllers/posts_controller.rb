class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
