	class StartupsController < ApplicationController
	def new
		@startup = Startup.new
	end
end
