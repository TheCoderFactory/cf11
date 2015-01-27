json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :company, :email, :phone, :message, :reason
  json.url partner_url(partner, format: :json)
end
