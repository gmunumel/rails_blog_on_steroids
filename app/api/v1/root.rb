module V1
  class Root < Grape::API
    mount Login
  end
end