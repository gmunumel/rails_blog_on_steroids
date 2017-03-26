require 'rails_helper'

RSpec.describe PairProgrammingSession, type: :model do
  it 'is valid with valid attributes' do
    expect(PairProgrammingSession.new).to be_valid
  end

  describe PairProgrammingSession do
    it { should belong_to(:project) }
    it { should belong_to(:host_user) }
    it { should belong_to(:visitor_user) }
  end
end