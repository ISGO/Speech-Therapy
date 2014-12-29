class LoginController < ApplicationController
	def index
	#if back from submit
	if request.post?
		#check if empty or nil
		@isIdEmpty = params[:id].blank?
		@isPassEmpty = params[:password].blank?

		#if id is not empty save id
		unless @isIdEmpty
			@idNumber = params[:id]
		end

	end
		
		#draw index again
		render('index');
	end

	def doLogin
		

		##unless SpeechTherapist.find(params[:email]) != nil
			##redirect_to('/')
		##end

		##@user = SpeechTherapist.find(params[:email])

		##if @user.nil?
		##	redirect_to('/')
		##end
		
	end
end
