class StatesController < ApplicationController
	def index
		
	end

	def new
		@state=State.new
		@country=Country.all
		#puts "XXXXXXXXXXx"+Country.all#find(params[1])
	end

	def create
		@state = State.new(params.require(:state).permit(:name, :abvr, :predet,:country_id))
		
		if @state.save
			flash[:notice] = "State has been created."
			redirect_to @state
		else
			# nothing, yet
		end
		
	end

	def show
		@state = State.find(params[:id])
	end
end
