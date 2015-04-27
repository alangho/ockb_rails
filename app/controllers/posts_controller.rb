class PostsController < ApplicationController
	before_action :logged_in_user, only: [:create]

	def index
		if params[:search]
			@posts = Post.search(params[:search]).order("created_at DESC")
		else
			@posts = Post.order("created_at DESC")
		end
	end

	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		if @post.save
			flash[:success] = "Post created!"
			@category = Category.where(:category_id => @post.category_id)
			redirect_to @post
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
		@comments = Comment.where(post_id: @post.id)
		@comment = Comment.new
	end


	private

	def post_params
		params.require(:post).permit(:title, :content, :category_id)
	end

end