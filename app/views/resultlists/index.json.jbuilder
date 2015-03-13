json.array!(@resultlists) do |resultlist|
  json.extract! resultlist, :id, :title, :address, :city, :state, :zip, :rating, :reviews, :url, :image
  json.url resultlist_url(resultlist, format: :json)
end
