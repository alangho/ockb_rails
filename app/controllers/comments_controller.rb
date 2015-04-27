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
			flash[:danger]= "There was an error while trying to submit your post.  Please try again"
			redirect_to @post
		end
  end

	private

	def comment_params
  		params.require(:comment).permit(:content)
	end

end