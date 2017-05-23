class UsersController < ApplicationController
  def create
		user = User.new(user_params)
	  if user.save
	    session[:user_id] = user.id
	    redirect_to root_path
	  end
	end

	def toggle_like
		if current_user.articles.exists?(params[:id])
			current_user.articles.delete(Article.find(params[:id]))
			render json: { liked: false }
		else
			current_user.articles << Article.find(params[:id])
			render json: { liked: true }
		end
	end

	private

	def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
