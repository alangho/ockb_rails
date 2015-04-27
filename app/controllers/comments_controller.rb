class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create]

	def create
		@post = Post.find(params[:comment][:post_id])
		@comment = @post.comments.create(comment_params)
		@comment.user_id = current_user.id
		if @comment.save
			flash[:success] = "Comment posted!"
			redirect_to @post
		else
			redirect_to categories_path
		end
    end

	private

	def comment_params
  		params.require(:comment).permit(:content)
	end

end