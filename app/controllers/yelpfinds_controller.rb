class YelpfindsController < ApplicationController
  def results
    params = { term: 'Chicken and Waffles',
               cll: @lat_lng
    }

    search = Yelp.client.search(params)
  end
end

  