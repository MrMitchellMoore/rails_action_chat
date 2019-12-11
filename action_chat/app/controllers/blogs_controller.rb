class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
  	@blogs = Blog.all
  end

  def show
  end

  def new
  	@blog = Blog.new
  end
  
  def create
  	@blog = Blog.create(blog_params)
  	if @blog.save
  		flash[:success] = "Post is created."
  		redirect_to @blog
  	else
  		flash.now[:error] = "Post was not created something went wrong."
  		render :new
  	end
  end

  def update
  	if @blog.update(blog_params)
  		flash[:success] = "Post updated."
  		redirect_to @blog	
  	else
  		flash.now[:error] = "Post not updated something went wrong."
  		render :edit 
  	end	
  end

  def edit
  end

  def destroy
  	@blog.destroy
  	flash[:success] = "Post is deleted"
  	redirect_to 
  end

  private

  def set_blog
  	@blog = Blog.find(params[:id])
  end

  def blog_params
  	params.require(:blog).permit(:title, :content)
  end
end
