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
        sessions = PairProgrammingSession.where{(host_user == my{current_user}) | (visitor_user == my{current_user})}
        sessions = sessions.includes(:project, :host_user, :visitor_user, reviews: [:code_samples, :user] )
        present sessions, with: Entities::PairProgrammingSessionsEntity
      end
    end
    rescue_from Grape::Exceptions::ValidationErrors do |e|
      rack_response({
                        status: e.status,
                        error_msg: e.message,
                    }.to_json, 400)
    end
  end
end