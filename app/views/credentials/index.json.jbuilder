json.array!(@credentials) do |credential|
  json.extract! credential, :id, :name, :username, :password, :basedir, :transfer_id
  json.url credential_url(credential, format: :json)
end
