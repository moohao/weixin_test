class Wxinfo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :appid, type: String
  field :appsecret, type: String
  field :secret_key, type: String
  field :token, type: String
end
