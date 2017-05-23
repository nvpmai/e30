class HomeController < ApplicationController
  def index
    @articles = Article.order(:created_at).page(params[:page]).per(9)
    liked_ids
  end

  def liked_ids
    if current_user
      @liked_ids = current_user.articles.pluck(:id)
    end
  end
end
