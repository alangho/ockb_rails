class CategoryController < ApplicationController

  def new
  end

  def show
  	@category = Category.friendly.find(params[:id])
  	@postList = Post.where(category_id: Category.friendly.find(params[:id]))
  	@sticky = @postList.where(sticky: true)
  	@challenge = @postList.where(challenge: true)
  	@posts = @postList.where.not(id: @sticky).where.not(id: @challenge).paginate(:page => params[:page], :per_page => 10)
  	if params[:search]
  		@posts = @posts.search(params[:search])
  	end
  end

end