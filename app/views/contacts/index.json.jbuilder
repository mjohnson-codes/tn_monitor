json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :phone, :vendor_id, :tenant_id, :sponsor_id
  json.url contact_url(contact, format: :json)
end
