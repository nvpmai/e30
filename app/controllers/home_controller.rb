class HomeController < ApplicationController
  def index
  	@articles = Article.order(:created_at).page(params[:page]).per(9)
  end
end
