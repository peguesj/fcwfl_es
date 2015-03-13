json.array!(@results) do |result|
  json.extract! result, :id, :name, :rating, :address, :city, :zip, :tel
  json.url result_url(result, format: :json)
end
