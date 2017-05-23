class HomeController < ApplicationController
  def index
  	if params[:term]
			@articles = Article.where('title ILIKE :search OR headline ILIKE :search OR content ILIKE :search', search: "%#{params[:term]}%")
								.order(created_at: :desc).page(params[:page]).per(9)
		else
			@articles = Article.order(created_at: :desc).page(params[:page]).per(9)
		end
    liked_ids
  end

  def liked_ids
    if current_user
      @liked_ids = current_user.articles.pluck(:id)
    end
  end
end
