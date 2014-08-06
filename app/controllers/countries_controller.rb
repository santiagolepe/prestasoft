class CountriesController < ApplicationController
	
	def index
		
	end

	def new
		@country = Country.new
	end

	def create
		@country = Country.new(params.require(:country).permit(:name, :abvr, :predet))
		
		if @country.save
			flash[:notice] = "Country has been created."
			redirect_to @country
			else
			# nothing, yet
			end
	end

end
