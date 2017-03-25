require 'rails_helper'

RSpec.describe ApiKey, type: :model do
  it 'is valid with valid attributes' do
    expect(ApiKey.new).to be_valid
  end
end
