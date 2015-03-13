json.array!(@find_chicken_and_waffles) do |find_chicken_and_waffle|
  json.extract! find_chicken_and_waffle, :id
  json.url find_chicken_and_waffle_url(find_chicken_and_waffle, format: :json)
end
