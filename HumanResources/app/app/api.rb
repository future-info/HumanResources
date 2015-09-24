class API < Grape::API
  prefix 'api'

  content_type :json, "application/json; charset=utf-8"
  format :json
  mount V1::HomeApi
end