class PostsController < ApplicationController

  def index
    if params[:query].present?
      @posts = Post.search_by_title_and_content(params[:query])
    else
      @posts = Post.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
