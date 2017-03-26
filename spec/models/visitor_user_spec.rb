require 'rails_helper'

RSpec.describe VisitorUser, type: :model do
  it 'is valid with valid attributes' do
    expect(VisitorUser.new(password: 'asda123', email: 'asd@as.com')).to be_valid
  end
  it 'is not valid without email or password attributes' do
    expect(VisitorUser.new(password: nil, email: nil)).to_not be_valid
  end
end
