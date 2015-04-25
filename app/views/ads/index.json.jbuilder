json.array!(@ads) do |ad|
  json.extract! ad, :id, :country, :region, :city, :address, :type, :user_id, :longitude, :latitude, :description, :price, :price_period
  json.url ad_url(ad, format: :json)
end
