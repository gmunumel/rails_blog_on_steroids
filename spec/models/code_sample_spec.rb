require 'rails_helper'

RSpec.describe CodeSample, type: :model do
  it 'is valid with valid attributes' do
    expect(CodeSample.new).to be_valid
  end

  describe CodeSample do
    it { should belong_to(:review) }
  end
end
