class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    Post.create(post_params)
    redirect_to new_post_path
  end
  def show
     @post = Post.find(params[:id])
  end
  private
  def blog_params
    params.require(:post).permit(:content)
  end
end
