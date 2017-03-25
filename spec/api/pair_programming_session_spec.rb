require 'rails_helper'

describe '/api', :type => :request do
  describe '/pair_programming_session' do
    let(:token) { create :authentication_token }
    let(:original_params) { { token: token.token} }
    let(:params) { original_params }
    let(:api_key) { create :api_key }
    let(:developer_header) { {'Authorization' => api_key.token} }

    it_behaves_like 'restricted for developers'
    it_behaves_like 'unauthenticated'

    context 'invalid params' do
      context 'incorrect token' do
        let(:params) { original_params.merge(token: 'invalid') }

        it_behaves_like '401'
        it_behaves_like 'json result'
        it_behaves_like 'auditable created'

        it_behaves_like 'contains error msg pair programming', 'authentication_error'
        it_behaves_like 'contains error code', ErrorCodes::BAD_AUTHENTICATION_PARAMS
      end
    end

    context 'valid params' do
    end

    def api_call (*params)
      get '/api/pair_programming_sessions', *params
    end
  end
end