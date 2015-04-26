class PostsController < ApplicationController
	before_action :logged_in_user, only: [:create]

	def create
		@post = Post.create(post_params)
		if @post.save
			flash[:success] = "Post submitted!"
			redirect_back_or categories_path
		else
			@category = Category.find(params[:category_id])
			@user = current_user
			render 'new'
		end
	end

	def new
		@category = Category.find(params[:category_id])
		@user = current_user
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
		@category = Category.find(@post.category_id)
		@user = User.find(@post.user_id)
		store_location
	end


	private

	def post_params
		params.require(:post).permit(:title, :content, :user_id, :category_id)
	end

end