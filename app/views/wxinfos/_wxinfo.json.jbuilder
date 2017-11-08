json.extract! wxinfo, :id, :appid, :appsecret, :secret_key, :token, :created_at, :updated_at
json.url wxinfo_url(wxinfo, format: :json)
