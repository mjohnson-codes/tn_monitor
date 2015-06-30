json.array!(@transfers) do |transfer|
  json.extract! transfer, :id, :name, :date_type, :sponsor_id, :vendor_id
  json.url transfer_url(transfer, format: :json)
end
