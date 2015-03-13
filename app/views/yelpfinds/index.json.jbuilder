json.array!(@yelpfinds) do |yelpfind|
  json.extract! yelpfind, :id
  json.url yelpfind_url(yelpfind, format: :json)
end
