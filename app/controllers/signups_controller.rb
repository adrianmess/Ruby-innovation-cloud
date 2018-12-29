class SignupsController < ApplicationController
	def new
		@signup = Signup.new
	end

	def create
		@signup = Signup.new(signup_params)
		if @signup.save
			redirect_to '/thanks'
		else
			render '/'
		end
	end



	private
	def signup_params
		#collect data from form and update signup model
		#here we require the model name signup and permit the column name email
		params.require(:signup).permit(:email)
	end
end
