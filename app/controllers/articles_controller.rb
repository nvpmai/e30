class ArticlesController < ApplicationController
	def index
		@articles = Article.where('title ILIKE :search OR headline ILIKE :search OR content ILIKE :search', search: "%#{params[:term]}%").page(params[:page]).per(9)
	end	
end
