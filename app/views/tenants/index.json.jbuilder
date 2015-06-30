json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :tenant_name, :protocol, :sponsor_id
  json.url tenant_url(tenant, format: :json)
end
