class ResultsController < ApplicationController
	def list
		@results = Result.all
	end 
	def create
		if session(:service => "Yelp"),
		 service = Yelpfind.results 
			Result.where(:name => service['name'] ,:rating => service['rating'] , :address => service['address'], :city => service['city'] , :zip => service['zip'], :tel => service['tel'])
		end
	end
	def result_params
      params.require(:result).permit(:name, :rating, :address, :city, :zip, :tel)
    end
end
