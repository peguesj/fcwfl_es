class FindChickenAndWafflesController < ApplicationController  
def index
  end

  def putTerm
    if params[:term].blank?
      @sterm = 'Chicken & Waffles'
    else
      @sterm = params[:term] 
    end
end

  def search
    parameters = { term: "Chicken & Waffles",
                       limit: 16, 
			}
	coordinates = {latitude: cookies[:lat], longitude: cookies[:lng]}
    render json: Yelp::Fusion.client.search_by_coordinates(coordinates, parameters)
#    render json: "https://api.yelp.com/v3/businesses/search?term=#{paramaters.term}&latitude=#{coordinates.latitude}&longitude=#{parameters.longitude}"
  end
end
