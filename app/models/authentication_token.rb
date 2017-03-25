class AuthenticationToken < ActiveRecord::Base
  belongs_to :user
  validates :token, presence: true
  scope :valid,  -> { where{ (expires_at == nil) | (expires_at > Time.zone.now) } }

  def self.generate (user)
    user.authentication_tokens.create(token: 'asd@2*&A', expires_at: nil)
    authenticationToken = AuthenticationToken.new(user: user)
    authenticationToken
  end
end
