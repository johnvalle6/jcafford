json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombre, :email, :telefono
  json.url persona_url(persona, format: :json)
end
