module V1
  class PairProgrammingSessions < Grape::API
    helpers ApiHelpers::AuthenticationHelper
    before { restrict_access_to_developers }
    before { authenticate! }

    desc 'End-points for the PairProgrammingSessions'
    resource :pair_programming_sessions do
      desc 'Retrieve the pair programming sessions'
      params do
        requires :token, type: String, desc: 'email'
      end
      get do
      end
    end
  end
end