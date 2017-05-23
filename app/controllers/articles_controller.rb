class ArticlesController < ApplicationController
	before_action :require_login, only: [:index]

	def index
		@articles = current_user.articles.order(created_at: :desc).page(params[:page]).per(9)
		liked_ids
	end

	def show
		@article = Article.find(params[:id])
	end

	def liked_ids
    if current_user
      @liked_ids = current_user.articles.pluck(:id)
    end
  end
end
