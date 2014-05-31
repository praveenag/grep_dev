class UsersController < ApplicationController
	def create
		@user = User.create(create_user_params)
		@user.save!
		redirect_to root_path
	end

	private

	def create_user_params
		params.require(:user).permit(:first_name, :last_name, :age, :location)
	end
end