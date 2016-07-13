json.array!(@newaplications) do |newaplication|
  json.extract! newaplication, :id
  json.url newaplication_url(newaplication, format: :json)
end
