class Patient < ActiveRecord::Base
  attr_accessible :hmo, :firstName, :id, :lastName, :mail, :password, :therapist_id, :address, :phone
end
