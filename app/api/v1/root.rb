module V1
  class Root < Grape::API
    format :json
    prefix :api

    mount Login
  end
end