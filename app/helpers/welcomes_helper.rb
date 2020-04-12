module WelcomesHelper
	def options_for_select
		User.all.map {|user| [user.email, user.id]}
	end
end
