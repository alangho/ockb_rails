class CommentsController < ApplicationController
	before_action :logged_in_user [:create]

	def create
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			flash[:success] = "Comment created!"
			redirect_to root_url
		else
			
    end

	private

		def comment_params
      		params.require(:comment).permit(:content)
		end
end