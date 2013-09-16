class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #defining a setter within application controller
  def sign_in_as(email)
		session[:current_email] = email
  end

  #creates an object 'current_user' with method of 'email' and todos
  def current_user
  	User.new(session[:current_email])
  end

  helper_method :current_user
end
