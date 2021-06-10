class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post =Post.new(post_params)
    if @post.save
      redirect_to new_posts_path,notice:"ブログを作成しました!"
    else
      render :new
    end
  end
  def show
     @post = Post.find(params[:id])
  end
  def edit
     @post =Post.find(params[:id])
  end
  def update
     @post = Post.find(params[:id])
    if @blog.update(post_params)
      redirect_to posts_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  private
  def blog_params
    params.require(:post).permit(:content)
  end
end
