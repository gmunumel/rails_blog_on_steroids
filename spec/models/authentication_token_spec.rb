require 'rails_helper'

RSpec.describe AuthenticationToken, type: :model do
  it 'is valid with valid attributes' do
    expect(AuthenticationToken.new(token: 'faket0k3n')).to be_valid
  end
  it 'is valid without user' do
    expect(AuthenticationToken.new(token: 'faket0k3n', user: nil)).to be_valid
  end
  it 'is valid without expires_at' do
    expect(AuthenticationToken.new(token: 'faket0k3n', expires_at: nil)).to be_valid
  end
  it 'is valid with expires_at greater than now' do
    expect(AuthenticationToken.new(token: 'faket0k3n', expires_at: Time.zone.now + 1.day)).to be_valid
  end
  it 'is not valid with expires_at less than now' do
    expect(AuthenticationToken.new(token: 'faket0k3n', expires_at: Time.zone.now - 1.day)).to be_valid
  end
  it 'is not valid without token' do
    expect(AuthenticationToken.new).to_not be_valid
  end
end
