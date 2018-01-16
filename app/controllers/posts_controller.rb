class PostsController < ApplicationController

  def index; end

  def new
    @post = Post.new
    @post.languages.build if @post.languages.empty?
  end

  def create
    @post = Post.new(post_params)
    #byebug
    @post.languages.build if @post.languages.empty?
    if @post.save
      flash[:success] = true
      redirect_to action: 'new'
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, languages_attributes: [:language])
  end
end
