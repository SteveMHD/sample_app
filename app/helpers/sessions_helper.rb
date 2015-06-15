module SessionsHelper
	# Logs in a given user
	def log_in(user)
		session[:user_id] = user.id
	end

	# returns a logged in user, if any
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	# checks to see if a user is logged in
	def logged_in?
		!current_user.nil?
	end
end
