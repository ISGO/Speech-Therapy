class TherapistController < ApplicationController
#:hmo, :firstName, :id, :lastName, :mail, :password, :therapist_id, :address, :phone
	
	def index
		if session[:user_id].blank?
			redirect_to login_index_path
			return
		end

		@user = SpeechTherapist.find(session[:user_id])

		render('myFiles')
	end

	def addPatient
		if session[:user_id].blank?
			redirect_to login_index_path
		end

		@user = SpeechTherapist.find(session[:user_id])
	end

	def myFiles
		if session[:user_id].blank?
			redirect_to login_index_path
		end
	end
end
