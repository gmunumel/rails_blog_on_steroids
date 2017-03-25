require 'rails_helper'

RSpec.describe AuditLog, type: :model do
  it 'is valid with valid attributes' do
    expect(AuditLog.new).to be_valid
  end
end
