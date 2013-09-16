require 'spec_helper'

# '#user' method is an instance on our Todo
# We want to verify that '#user=' takes passed in argument, 
# invokes email on that argument and then sets it to 'owner_email'

describe Todo, '#user=' do
	it 'assigns owner_email from the user passed in email' do
		user = User.new('person@example.com')
		todo = Todo.new
		todo.user = user
		expect(todo.owner_email).to eq 'person@example.com'
	end
end
