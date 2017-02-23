module GreetingsHelper
	def display_greetings(greet_me,status)
		status.eql?(200)? "Good #{greet_me}!" : "You have an invalid greeting!"
	end
end
