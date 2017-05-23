class ArticlesController < ApplicationController
	before_action :require_login, only: [:index]

	def index
		@articles = current_user.articles.order('created_at').page(params[:page]).per(9)
		liked_ids
	end

	def show
		@article = Article.find(params[:id])
	end

	def search
		@articles = Article.where('title ILIKE :search OR headline ILIKE :search OR content ILIKE :search', search: "%#{params[:term]}%")
								.order(:created_at).page(params[:page]).per(9)
		liked_ids
	end

	def liked_ids
    if current_user
      @liked_ids = current_user.articles.pluck(:id)
    end
  end
end
