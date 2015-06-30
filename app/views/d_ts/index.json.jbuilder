json.array!(@dts) do |dt|
  json.extract! dt, :id, :document_name, :version, :go_live_date, :transfer_id
  json.url dt_url(dt, format: :json)
end
