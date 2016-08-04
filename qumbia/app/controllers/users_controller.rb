class UsersController < ApplicationController
	def profile
		@user = User.find(current_user)
		@questions = Question.all
	end
end