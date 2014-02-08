json.array!(@amenities) do |amenity|
    json.extract! amenity, :id, :name, :capacity, :description
    json.url amenity_url(amenity, format: :json)
end