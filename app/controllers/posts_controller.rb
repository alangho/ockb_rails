class PostsController < ApplicationController

	def show
		@post = Post.find(params[:id])
		@category = Category.find(@post.category_id)
		@user = User.find(@post.user_id)
	end

end