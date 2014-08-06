class StatesController < ApplicationController
	def index
		
	end

	def new
		@state=State.new
		@country=Country.all
		#puts "XXXXXXXXXXx"+Country.all#find(params[1])
	end
end
