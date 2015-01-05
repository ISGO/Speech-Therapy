class PatientController < ApplicationController

	def index
	end

	def create
		redirect_to("/")
=begin
		if request.post?
			#check if empty or nil
			@isIdEmpty = params[:id].blank?
			@isFirstNameEmpty = params[:firstName].blank?
			@isLastNameEmpty = params[:lastName].blank?
			@isMailEmpty = params[:mail].blank?
			@isHmoEmpty = params[:hmo].blank?
			@isPhoneEmpty = params[:phone].blank?
			@isAddressEmpty = params[:address].blank?
			@hmo = ''
			@phone = ''
			@address = ''

			#if id is not empty save id
			unless (@isIdEmpty || @isFirstNameEmpty || @isLastNameEmpty || @isMailEmpty)
				@idNumber = params[:id]
				@firstName = params[:firstName]
				@lastName = params[:lastName]
				@mail = params[:mail]


				#check if user exsits
				@doesIdExists = Patient.exists?(@idNumber)
			end
		end
		unless @isHmoEmpty
			@hmo = params[:hmo]
		end
		unless @isHmoEmpty
			@phone = params[:phone]
		end
		unless @isHmoEmpty
			@address = params[:address]
		end

		unless @doesIdExists
			Patient.create([{id:@id, firstName:@firstName, lastName:@lastName, password:'1', mail:@mail, hmo:@hmo, therapist_id:'1', address:@address, phone:@phone}])
		end
=end
	end

end
