class UserController < ApplicationController
	def index
		@users = User.all
		render 'user'
	end
end
