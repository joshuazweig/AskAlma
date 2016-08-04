class UsersController < ApplicationController
	def profile
		@user = User.find(current_user)
	end
end
