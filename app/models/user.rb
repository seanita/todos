class User
attr_reader :email
	
	def initialize(email)
		@email = email
	end

#find todos owned by that user 
	def todos
		Todo.where(owner_email: email)
	end
end