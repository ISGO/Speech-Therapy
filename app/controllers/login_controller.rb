class LoginController < ApplicationController
	def index
		@backFromPost = false
		#@isPassCorrect = false

		#if back from submit
		if request.post?
			@backFromPost = true
			#check if empty or nil
			@isIdEmpty = params[:id].blank?
			@isPassEmpty = params[:password].blank?

			#if id is not empty save id
			unless @isIdEmpty
				@idNumber = params[:id]

				#check if user exsits
				@doesIdExists = SpeechTherapist.exists?(@idNumber)

				if @doesIdExists
					@user = SpeechTherapist.find(@idNumber)

					unless @isPassEmpty
						password = params[:password]
						
						if @user.password != password
							@isPassCorrect = false
						else
							#authintication passed
							@isPassCorrect = true
							#redirect_to('/therapit')
						end
					end
				end 
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
