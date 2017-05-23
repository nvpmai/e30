class Admin::BaseController < ApplicationController
	layout 'admin'
	
	before_action :authorize!

	def authorize!
		redirect_to root_path unless admin?
	end

	def admin?
		current_user && current_user.role == 'admin'
	end
end
