class PostsController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @post = Post.new(content: params[:content])
    respond_to do |format|
      if @post.save
        redirect_to('/posts/index')
        flash[:notice] = '投稿を作成しました'
      else
        format.js { @error = @post.errors.full_messages }
      end
    end
  end 
end
