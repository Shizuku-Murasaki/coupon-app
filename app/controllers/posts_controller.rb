class PostsController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      redirect_to("/posts/index")
      flash[:notice] = "投稿を作成しました"
    else
      render("posts/new")
    end
  end
end
