class Admin::ArticlesController < Admin::BaseController
	before_action :article, except: [:index, :new, :create]

	def index
		if params[:term]
			@articles = Article.where('title ILIKE :search OR headline ILIKE :search OR content ILIKE :search', search: "%#{params[:term]}%")
								.order(created_at: :desc).page(params[:page]).per(20)
		else
			@articles = Article.order(created_at: :desc).page(params[:page]).per(20)
		end
	end

	def new
    @article = Article.new
  end

  def edit
	end

	def update
    if @article.update(article_params)
      redirect_to admin_articles_path
    else
      flash.now[:error] = "Error: #{ @article.errors.full_messages.to_sentence }"
      render 'edit'
    end
  end

  def create
    @article = Article.create article_params
    if @article.persisted?
      redirect_to admin_articles_path
    else
      flash.now[:error] = "Error: #{ @article.errors.full_messages.to_sentence }"
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to admin_articles_path
    else
      flash.now[:error] = "Error: #{ @article.errors.full_messages.to_sentence }"
      render 'edit'
    end
  end

	def destroy
    @article.destroy
    redirect_back(fallback_location: root_path)
  end

	private

	def article
		@article = Article.find(params[:id])
	end

	def article_params
    params.require(:article).permit(:title, :headline, :featured_image, :content)
  end
end
