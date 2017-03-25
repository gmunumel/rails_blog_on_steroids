module V1
  class Root < Grape::API
    format :json
    prefix :api

    mount Login
    mount PairProgrammingSessions
  end
end