class PostController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :delete]
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def show
    #code
  end

  def create
    #code
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "You Created A Post"
    else
      render :new, alert: "Your Post Did Not Create"
    end
  end

  def edit
    #code
  end


  def update
    #code
    if @post.update(post_params)
      redirect_to @post, notice: "Post Was Updated Successfully"
    else
      render :edit, alert: "Error: Post Was Not Udated"
    end
  end

  def delete
    if @post.destroy
      redirect_to posts_path, notice: "Deleted Successfully"
    else
      render :index, notice: "Deleted Failed"
    end
  end
  private
    def set_post
      #code
      @post = Post.find(params[:id])
    end

    def post_params
      #code
      params.require(:post).permit(:title, :body)
    end
end
