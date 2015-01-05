class Patient < ActiveRecord::Base
  attr_accessible :address, :firstName, :hmo, :id, :lastName, :mail, :password, :phone, :therapist_id
end
