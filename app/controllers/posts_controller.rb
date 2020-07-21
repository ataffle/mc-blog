class PostsController < ApplicationController

  def index
    if params[:query].present?
      @posts = Post.global_search(params[:query])
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
