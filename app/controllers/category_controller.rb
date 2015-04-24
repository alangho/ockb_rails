class CategoryController < ApplicationController
  def new
  end

  def show
  	@category = Category.find(params[:id])
  	@posts = Post.where(category_id: Category.find(params[:id]))
  end

end

