class PostController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = User.new(params.require(:post).permit(:content, :about, :date, :allday))
    if @post.save
      redirect_to :posts
    else
      render "new"
    end
  end

  
end
