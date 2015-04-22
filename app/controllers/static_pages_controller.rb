class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:dashboard, :categories]

  def home
  end

  def dashboard
  end

  def categories
  end

  def signup
  end
  

end
