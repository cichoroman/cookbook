class PostsController < ApplicationController

  http_basic_authenticate_with name: "Ala", password:"123qwerty", only:[:destroy]


  def index
    @posts = Post.all
    @title = 'Your recipes'
    @content = 'Recipes from the comunity'
  end
  def show
    @post = Post.find(params[:id])


  end

  def new
    @post = Post.new
    @title = 'Add recipe'

  end

  def edit

      @post = Post.find(params[:id])
      @title = 'Edit the recipes'


  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy


    redirect_to posts_path
  end

  def update
      @post = Post.find(params[:id])
      if(@post.update(post_params))
       redirect_to @post
      else
        render 'edit'
      end


  end

  def create
    @title = 'Add recipe'
    @content = 'Create your own recipe'
    @post = Post.new(post_params)

if(@post.save)
 redirect_to @post
else
  render 'new'
end

  end

  private def post_params
    params.require(:post).permit(:title,:body)
  end


end
