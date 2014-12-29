class LoginController < ApplicationController
	def index
		
	end

	def doLogin
		puts(params[:email])

		if params[:email].nil? || params[:password].nil?
			redirect_to('/')
		end

		unless SpeechTherapist.(params[:email])
			redirect_to('/')
		end

		@user = SpeechTherapist.find(params[:email])

		if @user.nil?
			redirect_to('/')
		end
		
		render('index');
	end
end
