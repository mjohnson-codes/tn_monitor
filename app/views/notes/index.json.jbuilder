json.array!(@notes) do |note|
  json.extract! note, :id, :note_text, :tenant_id, :vendor_id, :transfer_id
  json.url note_url(note, format: :json)
end
