module About
	class GreetingsController < ApplicationController
		def greet_me
			greet_me = params[:greet_me]

			render locals: { greet_me: greet_me}  
		end
	end
end
