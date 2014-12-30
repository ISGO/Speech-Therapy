class LoginController < ApplicationController
	def index
		@backFromPost = false
		#@isPassCorrect = false

		unless session[:user_id].blank?
			redirect_to therapist_index_path
		else
			doLogin
		end
	end

	def doLogout
		session.clear
		redirect_to login_index_path
	end

private
	def doLogin
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
							session[:user_id] = @user.id
							redirect_to therapist_index_path
						end
					end
				end 
			end
		else
			#draw index again
			render('index');
		end
	end

end
