require 'grape-swagger'

module V1
  class Root < Grape::API
    format :json
    prefix :api
    version 'v1', using: :path

    mount Login
    mount PairProgrammingSessions

    add_swagger_documentation
  end
end