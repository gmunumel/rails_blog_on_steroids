require 'rails_helper'

RSpec.describe Project, type: :model do
  it 'is valid with valid attributes' do
    expect(Project.new).to be_valid
  end
end
