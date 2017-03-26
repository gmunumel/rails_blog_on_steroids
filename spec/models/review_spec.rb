require 'rails_helper'

RSpec.describe Review, type: :model do
  it 'is valid with valid attributes' do
    expect(Review.new).to be_valid
  end

  describe Review do
    it { should belong_to(:pair_programming_session) }
    it { should belong_to(:user) }
  end
end
