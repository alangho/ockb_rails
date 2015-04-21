class CategoryController < ApplicationController
  def new
  end

  def show
  	@category = Category.find(params[:id])
  end

end

