class Todo < ActiveRecord::Base

#'owner_email' is in database.This sets owner.email to eq 'new_user'
	def user=(new_user)
		self.owner_email = new_user.email
	end
end
