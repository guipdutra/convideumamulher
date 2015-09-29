json.array!(@women) do |woman|
  json.extract! woman, :id, :name, :area, :current_position, :linkedin
  json.url woman_url(woman, format: :json)
end
