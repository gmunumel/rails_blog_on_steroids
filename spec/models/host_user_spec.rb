require 'rails_helper'

RSpec.describe HostUser, type: :model do
  it 'is valid with valid attributes' do
    expect(HostUser.new(password: 'asda123', email: 'asd@as.com')).to be_valid
  end
  it 'is not valid without email or password attributes' do
    expect(HostUser.new(password: nil, email: nil)).to_not be_valid
  end
end
